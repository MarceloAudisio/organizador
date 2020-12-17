<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios extends CI_Controller {

    public $datos=array();

    public function __construct()
    {
        parent::__construct();

        if(!($this->session->userdata("usuario_id")) or $this->session->userdata("rol")!=1){
            redirect("acl");
        }
        //Cargo los modelos para todos los metodos
        $this->load->model("usuarios_model");
    }
	public function index()
	{
		redirect("usuarios/listar");
    }
    
    public function listar()
	{
       
        $this->datos["usuarios"]=$this->usuarios_model->listar();

		$this->load->view('usuarios/listado',$this->datos);
	}
    
    public function activar($usuario_id=""){
        if($usuario_id!=""){
            $this->usuarios_model->cambia_estado($usuario_id,1);
        }
        redirect("usuarios");
    }

    public function desactivar($usuario_id=""){
        if($usuario_id!=""){
            $this->usuarios_model->cambia_estado($usuario_id,0);
        }
        redirect("usuarios");
    }
}
