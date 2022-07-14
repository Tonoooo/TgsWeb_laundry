<?php 
// nama host, username, password dan nama database
$koneksi = mysqli_connect("localhost","root","","laundry_hendri");
// Periksa koneksi
if (mysqli_connect_errno()) {
	// code...
	echo "Koneksi database gagal : " . mysqli_connect_error();
    }
?>