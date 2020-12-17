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
        <?php $this->load->view("menu"); ?>
        <br>
        <div class="row">
            <div class="col-12">
            <h3>Lista de Usuarios:</h3>
            <br>
<?php if($usuarios){ ?>


  <table class="table">
  <thead>
    <tr>
      
      <th scope="col">Id</th>
      <th>Usuario</th>
      <th>Rol</th>
      <th>Ult Login.</th>
      <th>Estado</th>
      <th>Acciones</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach($usuarios as $t){ ?>
    
    <tr>
      
      <th scope="row">
      
      <?php echo str_pad($t["usuario_id"],10,"0",STR_PAD_LEFT); ?>
      </th>
      <td><?php echo $t["usuario"]; ?></td>
      <td><?php echo $t["rol_texto"]; ?></td>
      <td><?php echo $t["ult_login_humano"]; ?></td>
      <td>
      <?php if($t["estado"]==1){ ?>
          <b class="text-success">Activo</b>
      <?php }else{ ?>
        <b class="text-danger">Inactivo</b>
      <?php } ?>
      </td>
      
      <td>
      <div class="btn-group">
        <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Acciones
        </button>
        <div class="dropdown-menu">
        <a class="dropdown-item" href="<?php echo site_url("usuarios/activar/".$t["usuario_id"]); ?>">Activar</a>
        <a class="dropdown-item" href="<?php echo site_url("usuarios/desactivar/".$t["usuario_id"]); ?>">Desactivar</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item text-danger borrar" href="<?php echo site_url("usuarios/borrar/".$t["usuario_id"]);?>">Borrar</a>
        </div>
      </div>
      </td>
    </tr>
    <?php } ?>
  </tbody>
  
</table>
    <?php }else{ ?>
      <p><br>
      <div class="alert alert-primary" role="alert">
        Aún no hay usuarios
      </div>
      </p>
    <?php } ?>

            </div>
        </div>
    </div>
    <script src="<?php echo base_url("js/jquery-3.5.1.min.js");?>"></script>
    <script src="<?php echo base_url("js/bootstrap.bundle.min.js");?>"></script>
    <script src="<?php echo base_url("js/bootbox.all.min.js");?>"></script>
    <script>
      $(document).ready(function(){

        

        $(".borrar").click(function(e){
          e.preventDefault();
          var dir= $(this).attr("href");
          bootbox.confirm({
              message: "Esta seguro de Borrar el usuario?",
              buttons: {
                  confirm: {
                      label: 'Si'
                  },
                  cancel: {
                      label: 'No'
                  }
              },
              callback: function (result) {
                  if(result){
                    location.href=dir;
                  }
              }
          });
        });
      })
    </script>
  </body>
</html>