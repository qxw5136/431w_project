<?php
include 'db.php';

$userId = $_POST['userId'] ?? '';
$plainTextPassword = $_POST['newPassword'] ?? '';

if (!empty($userId) && !empty($plainTextPassword)) {
    $stmt = $conn->prepare("UPDATE Player SET password = :newPassword WHERE playerID = :userId");
    $stmt->bindParam(':newPassword', $plainTextPassword, PDO::PARAM_STR);
    $stmt->bindParam(':userId', $userId, PDO::PARAM_INT);

    if ($stmt->execute()) {
        echo "Password updated successfully for User ID: " . htmlspecialchars($userId);
    } else {
        echo "Error updating password.";
    }
} else {
    echo "User ID or password is empty.";
}

echo "<br><a href='adminpage.php'>Back to Admin Page</a>";
?>
