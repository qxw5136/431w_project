<?php
session_start();
include 'db.php';

$username = $_POST['username'];
$password = $_POST['password'];

if ($username == 'admin' && $password == 'admin') {
    $_SESSION['currentUser'] = 'admin';
    header('Location: adminpage.php');
    exit();
} else {
    $stmt = $conn->prepare("SELECT * FROM Player WHERE username = :username AND password = :password");
    $stmt->execute(['username' => $username, 'password' => $password]);

    if ($stmt->rowCount() > 0) {
        $_SESSION['currentUser'] = $username;
        header('Location: userpage.php');
    } else {
        header("Location: loginpage.html?error=invalidlogin");
        exit();
    }
}
?>
