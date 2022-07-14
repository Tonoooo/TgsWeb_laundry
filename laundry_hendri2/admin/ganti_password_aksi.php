
<?php

// menghubungkan dengan koneksi
include '../koneksi.php';

// menangkap data yang dikirim dari form
$password_baru = md5($_POST['password_baru']);
//fungsi md5 diatas untuk enkripsi kedalam bentuk md5

mysqli_query($koneksi, "UPDATE admin SET password = '$password_baru'");

header("Location: ganti_password.php?pesan=oke");

?>