<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="<?php echo site_url("principal");?>"><?php echo APP_TITULO; ?></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo site_url("principal");?>">Principal <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo site_url("tareas/nueva");?>">Nueva Tarea</a>
      </li>
      <?php if($this->session->userdata("rol")==1){ ?>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Administración
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="<?php echo site_url("usuarios");?>">Gestión de Usuarios</a>
          
        </div>
      </li>
      <?php } ?>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a href="<?php echo site_url("acl/salir"); ?>" class="btn btn-outline-secondary my-2 my-sm-0" >Salir</a>
    </form>
  </div>
</nav>