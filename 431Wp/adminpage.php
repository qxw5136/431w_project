<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
    <style>
        body { font-family: Arial, sans-serif; }
        #userList {
            max-height: 400px;
            overflow-y: auto;
            border: 1px solid #ddd;
            margin-top: 20px;
            padding: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h2>Admin Page</h2>
<div class="signout-button">
    <button onclick="window.location.href='loginpage.php';">Sign Out</button>
</div>
<!-- Search Form -->
<form method="get">
    Search Username: <input type="text" name="search" placeholder="Enter username">
    <input type="submit" value="Search">
</form>

<!-- User List -->
<div id="userList">
    <table>
        <tr>
            <th>User ID</th>
            <th>Username</th>
            <th>Action</th>
        </tr>

        <?php
        include 'db.php';

        $search = $_GET['search'] ?? '';
        $stmt = $conn->prepare("SELECT playerID, username FROM Player WHERE username LIKE :search");
        $searchTerm = '%' . $search . '%';
        $stmt->bindParam(':search', $searchTerm, PDO::PARAM_STR);
        $stmt->execute();

        while ($row = $stmt->fetch()) {
            echo "<tr>";
            echo "<td>" . htmlspecialchars($row['playerID']) . "</td>";
            echo "<td>" . htmlspecialchars($row['username']) . "</td>";
            echo "<td><a href='userdetail.php?userId=" . $row['playerID'] . "'>View Details</a></td>";
            echo "</tr>";
        }
        ?>
    </table>
</div>
</body>
</html>
