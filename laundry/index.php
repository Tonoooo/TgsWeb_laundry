<!doctype html>
    <html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <title>Form Login</title>
    </head>
    <body>
        <div class="container">
        <div class="row justify-content-center py-5">
            <div class="col-md-5">
            <div class="card">
                <div class="card-header  mb-0"><h5 class="text-center">Sistem Informasi Laundry<br/> SMKN 7 Baleendah</h5></div>
                <div class="card-body">
                
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
                <form action="" method="post">
                <div class="mb-3">
                    <label for="Username" class="form-label">Username</label>
                    <input type="Username" class="form-control" id="Username" aria-describedby="emailHelp" name="">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="">
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
                <input type="submit" class="btn btn-primary" value="Log In">	
                </form>
                </div>
            </div>
            </div>
        </div>
        </div>
    </body>
    </html>
