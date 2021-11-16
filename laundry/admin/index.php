<!DOCTYPE html>
<html>
<head>
    <title>Sistem Informasi Laundry</title>
</head>
<body>
    <h2>Halaman Admin</h2>
    <br>
    <?php
        session_start();
        if($_SESSION['status']!="login"){
            header("location:../index.php?pesan=belum_login");
        }
        ?>
    <h4>Selamat datang, <?php echo $_SESSION['username']; ?>! anda telah login.</h4>

    <p>selamt datang di halaman admin. halaman admin masih kosong. yuk buat halaman admin nya dulu biar kece.</p>

    <a href="logout.php">LOGOUT</a>
</body>
</html>