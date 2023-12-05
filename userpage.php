<?php
session_start();
include 'db.php';


if (!isset($_SESSION['currentUser'])) {
    header("Location: loginpage.html");
    exit();
}
if (isset($_POST['signout'])) {
    session_destroy();
    header("Location: loginpage.html");
    exit();
}
$username = $_SESSION['currentUser'];
$stmt = $conn->prepare("SELECT * FROM player WHERE username = :username");
$stmt->execute(['username' => $username]);
$user = $stmt->fetch();

$gamesStmt = $conn->prepare("SELECT game.gamename FROM plays JOIN game ON plays.gameID = game.gameID WHERE plays.playerID = :playerID");
$gamesStmt->execute(['playerID' => $user['playerID']]);
$games = $gamesStmt->fetchAll();


$friendsQuery = $conn->prepare("
    SELECT p.username, p.playerID
    FROM player p 
    JOIN Friends f ON p.playerID = f.playerID2 OR p.playerID = f.playerID1
    WHERE (f.playerID1 = :playerID OR f.playerID2 = :playerID) AND p.playerID != :playerID
");
$friendsQuery->execute(['playerID' => $user['playerID']]);
$friends = $friendsQuery->fetchAll(PDO::FETCH_ASSOC);


if (isset($_POST['addFriend'])) {
    $friendInput = trim($_POST['friendInput']);

    $friendID = null;
    if (ctype_digit($friendInput)) {
        $checkUserIDExists = $conn->prepare("SELECT playerID FROM player WHERE playerID = :playerID");
        $checkUserIDExists->execute(['playerID' => $friendInput]);
        if ($checkUserIDExists->fetch()) {
            $friendID = $friendInput;
        }
    } else {

        $checkUsernameExists = $conn->prepare("SELECT playerID FROM player WHERE username = :username");
        $checkUsernameExists->execute(['username' => $friendInput]);
        if ($result = $checkUsernameExists->fetch()) {
            $friendID = $result['playerID'];
        }
    }

    if ($friendID) {
        try {
            $addFriendQuery = $conn->prepare("INSERT INTO Friends (playerID1, playerID2) VALUES (:playerID, :friendID)");
            $addFriendQuery->execute(['playerID' => $user['playerID'], 'friendID' => $friendID]);

            echo '<script>window.location.href = "userpage.php";</script>';
        } catch (PDOException $e) {
            echo "An error occurred: " . $e->getMessage();
        }
    } else {
        echo "The user ID or username you entered does not exist.";
    }
}

if (isset($_POST['deleteFriend'])) {
    $friendUsername = $_POST['deleteFriend'];

    $deleteFriendQuery = $conn->prepare("
        DELETE FROM friends 
        WHERE (playerID1 = :playerID AND playerID2 = 
            (SELECT playerID FROM player WHERE username = :friendUsername)) 
        OR (playerID2 = :playerID AND playerID1 = 
            (SELECT playerID FROM player WHERE username = :friendUsername))
    ");

    $deleteFriendQuery->execute(['playerID' => $user['playerID'], 'friendUsername' => $friendUsername]);

    header("Location: userpage.php");
    exit();
}

$assetsQuery = $conn->prepare("
    SELECT assetname, `values`
    FROM asset 
    WHERE username = :username
");
$assetsQuery->execute(['username' => $username]);
$assets = $assetsQuery->fetchAll(PDO::FETCH_ASSOC);



$inventoryQuery = $conn->prepare("
    SELECT itemname, counts 
    FROM inventory 
    WHERE playerID = :playerID
");
$inventoryQuery->execute(['playerID' => $user['playerID']]);
$inventory = $inventoryQuery->fetchAll(PDO::FETCH_ASSOC);


function encodeImage($imageData) {
    return 'data:image/jpeg;base64,' . base64_encode($imageData);
}

if (isset($_POST['submit']) && isset($_FILES['avatar'])) {
    if ($_FILES['avatar']['error'] === UPLOAD_ERR_OK) {
        $avatar = file_get_contents($_FILES['avatar']['tmp_name']);

        $updateStmt = $conn->prepare("UPDATE player SET avatar = :avatar WHERE username = :username");
        $updateStmt->execute(['avatar' => $avatar, 'username' => $username]);
        $stmt->execute(['username' => $username]);
        $user = $stmt->fetch();
    } else {
        echo "Error uploading file.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>User Page</title>
    <style>
        body {
            position: relative;
            text-align: center;
        }
        #avatarImage {
            position: absolute;
            top: 10px;
            right: 10px;
            height: 100px; /* Adjust size as needed */
            border-radius: 50%; /* Circular avatar */
        }
        #userInfo, #userGames {
            margin-top: 120px;
        }
    </style>
</head>
<body>
<div id="signout">
    <form action="userpage.php" method="post">
        <button type="submit" name="signout" id="signoutButton">Sign Out</button>
    </form>
</div>
<div id="userInfo">
    <h2><?= htmlspecialchars($user['username']) ?></h2>
    <p>User ID: <?= htmlspecialchars($user['playerID']) ?></p>
</div>

<?php if (!empty($user['avatar'])): ?>
    <img id="avatarImage" src="<?= encodeImage($user['avatar']) ?>" alt="Avatar"/>
<?php endif; ?>

<form action="userpage.php" method="post" enctype="multipart/form-data">
    <label for="avatar">Upload Avatar:</label>
    <input type="file" name="avatar" id="avatar">
    <input type="submit" name="submit" value="Upload Avatar">
</form>

<br>
<br>


<div id="userAssets">
    <h3>Your Assets:</h3>
    <?php foreach ($assets as $asset): ?>
        <div class="asset">
            <p><strong></strong> <?= htmlspecialchars($asset['assetname']) ?></p>
            <p><strong>Value:</strong> <?= htmlspecialchars($asset['values']) ?></p>
        </div>
    <?php endforeach; ?>
</div>
<br>
<br>
<br>


<div id="userInventory">
    <h3>Your Inventory:</h3>
    <?php foreach ($inventory as $item): ?>
        <div class="inventoryItem">
            <p><strong>Item Name:</strong> <?= htmlspecialchars($item['itemname']) ?></p>
            <p><strong>Counts:</strong> <?= htmlspecialchars($item['counts']) ?></p>
        </div>
    <?php endforeach; ?>
</div>






<div id="userGames">
    <h3>Games Played:</h3>
    <?php foreach ($games as $game): ?>
        <p><?= htmlspecialchars($game['gamename']) ?></p>
    <?php endforeach; ?>
</div>

<br>
<br>
<br>
<br>
<br>


<form action="userpage.php" method="post">
    <input type="text" name="friendInput" placeholder="Enter User ID or Name">
    <input type="submit" name="addFriend" value="Add Friend">
</form>



<div id="userFriends">
    <h3>Your Friends:</h3>
    <?php foreach ($friends as $friend): ?>
        <form action="userpage.php" method="post">
            <p>
                <?= htmlspecialchars($friend['username']) ?> (ID: <?= htmlspecialchars($friend['playerID']) ?>)
                <input type="hidden" name="deleteFriend" value="<?= htmlspecialchars($friend['username']) ?>">
                <button type="submit">Delete</button>
            </p>
        </form>
    <?php endforeach; ?>
</div>


</body>
</html>
