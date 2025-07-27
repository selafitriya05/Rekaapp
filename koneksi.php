<?php
$servername = "sqlXXXXXX.infinityfree.com";
$username = "epiz_XXXXXXX";
$password = "your_password";
$dbname = "epiz_XXXXXXX_rkap_db";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>
