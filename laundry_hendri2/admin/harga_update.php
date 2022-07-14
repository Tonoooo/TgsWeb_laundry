<?php
include '../koneksi.php';

$harga = $_POST["harga_per_kilo"];

mysqli_query($koneksi, "UPDATE harga SET harga_per_kilo = $harga");

header("Location: harga.php?pesan=oke");

?>