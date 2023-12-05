<?php
include 'db.php';

$username = $_POST['username'];
$password = $_POST['password'];

$stmt = $conn->prepare("SELECT * FROM Player WHERE username = :username");
$stmt->execute(['username' => $username]);

if ($stmt->rowCount() > 0) {
    header("Location: signuppage.html?error=usernameexists");
    exit();
} else {
    $stmt = $conn->prepare("INSERT INTO Player (username, password) VALUES (:username, :password)");
    $stmt->execute(['username' => $username, 'password' => $password]);
    header("Location: loginpage.html?signup=success");
    exit();
}
?>
