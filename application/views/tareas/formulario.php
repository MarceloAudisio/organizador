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
            <form method="POST">
            <?php echo validation_errors("<div class=\"alert alert-danger\">","</div>"); ?>


            <div class="form-group row">
                <label for="titulo" class="col-4 col-form-label">Titulo</label> 
                <div class="col-8">
                <input id="titulo" name="titulo" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label for="descripcion" class="col-4 col-form-label">Descripcion</label> 
                <div class="col-8">
                <textarea id="descripcion" name="descripcion" cols="40" rows="5" class="form-control"></textarea>
                </div>
            </div>

            <div class="form-group row">
                <label for="prioridad" class="col-4 col-form-label">Prioridad</label> 
                <div class="col-8">
                <select name="prioridad" class="form-control">
                    <option value="<?php echo PRIO_ALTA; ?>" <?php echo (PRIO_ALTA==PRIO_DEFECTO)?"selected":"";?>>Alta</option>
                    <option value="<?php echo PRIO_NORMAL; ?>" <?php echo (PRIO_NORMAL==PRIO_DEFECTO)?"selected":"";?>>Normal</option>
                    <option value="<?php echo PRIO_BAJA; ?>" <?php echo (PRIO_BAJA==PRIO_DEFECTO)?"selected":"";?>>Baja</option>
                    <option value="<?php echo PRIO_TENTATIVA; ?>" <?php echo (PRIO_TENTATIVA==PRIO_DEFECTO)?"selected":"";?>>Tentativa / Proyecto</option>

                </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="vence" class="col-4 col-form-label">Vence</label> 
                <div class="col-8">
                <div class="input-group">
                <div class="form-check form-check-inline">
                <input id="novence" name="novence" type="checkbox" class="form-check-input" value="1" checked><label class="form-check-label" for="novence"> Sin Vencimiento</label>
                </div>&nbsp;
                <input id="vence" name="vence" type="date" class="form-control">&nbsp;
                
                </div>
                </div>
            
            </div> 


            <div class="form-group row">
                <div class="offset-4 col-8">
                <button name="submit" type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </div>
            </form>
            </div>
        </div>
    </div>
    <script src="<?php echo base_url("js/jquery-3.5.1.min.js");?>"></script>
    <script src="<?php echo base_url("js/bootstrap.bundle.min.js");?>"></script>
    <script>
        $(document).ready(function(){
            $('#novence').change(function(){
                if ($('#novence').is(':checked') == true){
                    $('#vence').prop('disabled', true);
                } else {
                    $('#vence').prop('disabled', false);
                    $('#vence').focus();
                }
            });
        });
    
    </script>
  </body>
</html>


