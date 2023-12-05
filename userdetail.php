<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
</head>
<body>
<?php
include 'db.php';
$userId = $_GET['userId'] ?? '';


if (isset($_POST['updateInventory'])) {
    foreach ($_POST['inventoryID'] as $index => $inventoryID) {
        $counts = $_POST['counts'][$index];
        $updateInventory = $conn->prepare("UPDATE inventory SET counts = :counts WHERE inventoryID = :inventoryID");
        $updateInventory->execute(['counts' => $counts, 'inventoryID' => $inventoryID]);
    }
}

if (isset($_POST['updateAssets'])) {
    foreach ($_POST['assetID'] as $index => $assetID) {
        $values = $_POST['values'][$index];
        $updateAsset = $conn->prepare("UPDATE asset SET `values` = :values WHERE assetID = :assetID");
        $updateAsset->execute(['values' => $values, 'assetID' => $assetID]);
    }
}

$stmt = $conn->prepare("SELECT * FROM Player WHERE playerID = :userId");
$stmt->bindParam(':userId', $userId, PDO::PARAM_INT);
$stmt->execute();
$user = $stmt->fetch();

if ($user) {
    echo "<h2>User Details for " . htmlspecialchars($user['username']) . "</h2>";
    echo "<p>User ID: " . htmlspecialchars($user['playerID']) . "</p>";
    echo "<p>Old Password: " . htmlspecialchars($user['password']) . "</p>";


    echo "<h3>Games Played:</h3>";
    $stmt = $conn->prepare("SELECT Game.* FROM Game JOIN Plays ON Game.gameID = Plays.gameID WHERE Plays.playerID = :userId");
    $stmt->bindParam(':userId', $userId, PDO::PARAM_INT);
    $stmt->execute();
    while ($game = $stmt->fetch()) {
        echo "<p>Game ID: " . htmlspecialchars($game['gameID']) . ", " . htmlspecialchars($game['gamename']) . "</p>";
    }


    echo "<h3>Edit Inventory:</h3>";
    $inventoryQuery = $conn->prepare("SELECT * FROM inventory WHERE playerID = :userId");
    $inventoryQuery->bindParam(':userId', $userId, PDO::PARAM_INT);
    $inventoryQuery->execute();
    $inventoryItems = $inventoryQuery->fetchAll(PDO::FETCH_ASSOC);

    echo "<form action='userdetail.php?userId=" . htmlspecialchars($userId) . "' method='post'>";
    foreach ($inventoryItems as $item) {
        echo "<div class='inventoryItem'>";
        echo "<input type='hidden' name='inventoryID[]' value='" . htmlspecialchars($item['inventoryID']) . "'>";
        echo "Item Name: " . htmlspecialchars($item['itemname']) . " ";
        echo "Counts: <input type='number' name='counts[]' value='" . htmlspecialchars($item['counts']) . "'>";
        echo "</div>";
    }
    echo "<input type='submit' name='updateInventory' value='Update Inventory'>";
    echo "</form>";


    echo "<h3>Edit Assets:</h3>";
    $assetQuery = $conn->prepare("SELECT * FROM asset WHERE username = :username");
    $assetQuery->bindParam(':username', $user['username'], PDO::PARAM_STR);
    $assetQuery->execute();
    $assets = $assetQuery->fetchAll(PDO::FETCH_ASSOC);

    echo "<form action='userdetail.php?userId=" . htmlspecialchars($userId) . "' method='post'>";
    foreach ($assets as $asset) {
        echo "<div class='assetItem'>";
        echo "<input type='hidden' name='assetID[]' value='" . htmlspecialchars($asset['assetID']) . "'>";
        echo "Asset Name: " . htmlspecialchars($asset['assetname']) . " ";
        echo "Values: <input type='text' name='values[]' value='" . htmlspecialchars($asset['values']) . "'>";
        echo "</div>";
    }
    echo "<input type='submit' name='updateAssets' value='Update Assets'>";
    echo "</form>";
} else {
    echo "<p>User not found.</p>";
}


echo "<h3>Update Password:</h3>";
echo "<form action='updatepassword.php' method='post'>
        <input type='hidden' name='userId' value='" . htmlspecialchars($userId) . "'>
        New Password: <input type='password' name='newPassword' required>
        <input type='submit' value='Update Password'>
      </form>";
?>

<button onclick="goBack()">Go Back</button>

<script>
    function goBack() {
        window.location.href = 'adminpage.php';
    }
</script>
</body>
</html>
