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
            <h3>Lista de Tareas:</h3>
            <br>
<?php if($tareas){ ?>

<form class="form-inline">
      <label class="sr-only" for="buscar">Buscar</label>
      <input type="text" class="form-control mb-2 mr-sm-2" id="buscar" placeholder="Palabra de Titulo, Contenido...">
  <button type="submit" class="btn btn-secondary mb-2">Buscar</button>
</form>

  <table class="table">
  <thead>
    <tr>
      <th class="text-center">
      <div class="form-check">
      <input type="checkbox" class="form-check-input" name="todas" id="todas">&nbsp;
      </div> 
      </th>
      <th scope="col">Codigo</th>
      <th>Titulo</th>
      <th>Prioridad</th>
      <th>Fecha</th>
      <th>Vencimiento</th>
      <th>Estado</th>
      <th>Acciones</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach($tareas as $t){ ?>
    
    <tr <?php echo ($t["vencio"]=="SI")?'class="table-danger"':'';?>>
      <td class="text-center">
      <div class="form-check">
      <input type="checkbox" class="form-check-input" name="seleccionados" value="<?php echo $t["tarea_id"]; ?>">
      </div>  
      </td>
      <th scope="row" class="text-right">
      <?php
      if($t["prioridad_id"]==PRIO_ALTA){
      ?>
      <span class="text-warning float-left">
      <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
      </span>
      <?php
      }
      ?>
      <?php echo str_pad($t["tarea_id"],10,"0",STR_PAD_LEFT); ?>
      </th>
      <td><?php echo $t["titulo"]; ?></td>
      <td><?php echo $t["prioridad"]; ?></td>
      <td><?php echo $t["fecha_humano"]; ?></td>
      <td><?php echo $t["vence"]; ?></td>
      <td><?php echo $t["estado_nombre"]; ?></td>
      <td>
      <div class="btn-group">
        <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Acciones
        </button>
        <div class="dropdown-menu">
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_PENDIENTE_NO_VISTA); ?>">Pend. No vista</a>
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_PENDIENTE_VISTA); ?>">Pendiente</a>
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_EN_PROGRESO); ?>">En progreso</a>
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_DETENIDA); ?>">Detenida</a>
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_DESCARTADA); ?>">Descartada</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item text-danger borrar" href="<?php echo site_url("tareas/borrar/".$t["tarea_id"]);?>">Borrar</a>
        </div>
      </div>
      &nbsp;
      <a href="<?php echo site_url("tareas/ver/".$t["tarea_id"]);?>" class="btn btn-secondary btn-sm"><i class="fa fa-eye" aria-hidden="true"></i></a>
      </td>
    </tr>
    <?php } ?>
  </tbody>
  <tfoot>
    <tr>
      <th colspan="8">
      <br>
     
      Con los seleccionados (<span id="tot_sel">0</span>): 
      <div class="btn-group">
        <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Acciones
        </button>
        <div class="dropdown-menu">
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_PENDIENTE_NO_VISTA); ?>">Pend. No vista</a>
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_PENDIENTE_VISTA); ?>">Pendiente</a>
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_EN_PROGRESO); ?>">En progreso</a>
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_DETENIDA); ?>">Detenida</a>
        <a class="dropdown-item" href="<?php echo site_url("tareas/estado/".$t["tarea_id"]."/".EST_DESCARTADA); ?>">Descartada</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item text-danger borrar" href="<?php echo site_url("tareas/borrar/".$t["tarea_id"]);?>">Borrar</a>
        </div>
      </div>&nbsp;
      <button type="button" class="btn btn-secondary btn-sm" name="masiva" id="masiva">Hacer</button>
      
      </th>
    </tr>
  </tfoot>
</table>
    <?php }else{ ?>
      <p><br>
      <div class="alert alert-primary" role="alert">
        No Tenes Tareas Hurrra!!!
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

        $("input#todas").click(function(){
            $('input:checkbox[name=seleccionados]').not(this).prop('checked', this.checked);
            var total= $('input:checkbox[name=seleccionados]:checked').length
            $("#tot_sel").text(total);
        });

        $('input:checkbox[name=seleccionados]').change(function () {
          var total= $('input:checkbox[name=seleccionados]:checked').length
          $("#tot_sel").text(total);
        });

        $(".borrar").click(function(e){
          e.preventDefault();
          var dir= $(this).attr("href");
          bootbox.confirm({
              message: "Esta seguro de Borrar la tarea?",
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