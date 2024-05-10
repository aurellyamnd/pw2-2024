<?php
include_once('koneksi.php');

// menangkap data yang dikirim dari form login
$email = $_POST['email'];
$password = md5($_POST['password']);

//buat query untuk menarik data user berdasarkan email dan password

$query = "SELECT * FROM users WHERE email ='$email' AND password='$password'";
$result = $dbh->query($query)->fetch();

if($result) {
    session_start();
    $_SESSION['email'] = $email;
    $_SESSION['nama'] = $result['nama'];
    header('location:dashboard.php');
} else {
    header('location:index.php');
}