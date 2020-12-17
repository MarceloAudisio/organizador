<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url("css/bootstrap.min.css");?>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title><?php echo APP_TITULO; ?></title>
  </head>
  <body>
    <div class="container">
        <div class="row">
            <div class="col-6 mx-auto">
            <h1 class="text-center"><?php echo APP_TITULO; ?></h1>
            <br>
            </div>
        </div>
        <div class="row">
            <div class="col-6 mx-auto">
            <div class="card shadow">
            <div class="card-body">

                <form method="post">
                <div class="form-group row">
                    <label for="usuario" class="col-4 col-form-label">Usuario:</label> 
                    <div class="col-8">
                    <input id="usuario" name="usuario" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="password" class="col-4 col-form-label">Password:</label> 
                    <div class="col-8">
                    <input id="password" name="password" type="password" class="form-control">
                    </div>
                </div> 
                <div class="form-group row">
                    <div class="offset-4 col-8">
                    <button name="submit" type="submit" class="btn btn-primary">Ingresar</button>
                    </div>
                </div>
                </form>

              </div>
              </div>
            </div>
        </div>
    </div>
    <script src="<?php echo base_url("js/jquery-3.5.1.min.js");?>"></script>
    <script src="<?php echo base_url("js/bootstrap.bundle.min.js");?>"></script>
    
  </body>
</html>