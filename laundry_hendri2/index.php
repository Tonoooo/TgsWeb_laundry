<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Login</title>
    <link rel="stylesheet" href="assets/style.css">

</head>
<body>

<div class="container">

    <div class="container-left">
      <img src="assets/logo.png" alt="form-login">
      <h1><font color="white">Sistem Informasi Laundry</font></h1>
      <p><font color="white">Muhammad Hendriansyah</font></p>
    </div>

    <div class="container-right">
        <?php 
                            if(isset($_GET['pesan'])){
                                if($_GET['pesan'] == "gagal"){
                                    echo "<div class='alert alert-danger'>Login gagal! username dan password salah!</div>";
                                }else if($_GET['pesan'] == "logout"){
                                    echo "<div class='alert alert-info'>Anda telah berhasil logout</div>";
                                }else if($_GET['pesan'] == "belum_login"){
                                    echo "<div class='alert alert-danger'>Anda harus login untuk mengakses halaman admin</div>";
                                }
                            }
                        ?>
      <form action="login.php" method="post">
        <div class="input">
          <label for="username" class="form-label">Username</label>
          <input type="text" name="username" id="username" required autocomplete="off" placeholder="Masukkan username">
        </div>        
        <div class="input">
          <label for="password">Password</label>
          <input type="password" name="password" id="password" required placeholder="Masukkan password">
        </div>
        <div>
            <input type="checkbox" name="remember" id="rememberme" >
            <label for="rememberme" class="form-label"><strong>Remember Me</strong></label>
        </div>
        <button>Masuk</button>
      </form> 
    </div>

  </div>
</body>
</html>