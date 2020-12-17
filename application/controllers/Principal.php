<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Principal extends CI_Controller {
    
    public $datos=array();
    
    public function __construct()
    {
        parent::__construct();

        if(!($this->session->userdata("usuario_id") and $this->session->userdata("usuario"))){
            redirect("acl");
        }
    }
	public function index()
	{
        $this->load->model("tareas_model");


        //Filtrar para mi
        $this->tareas_model->set_usuario($this->session->userdata("usuario_id"));
        $this->datos["tareas"]=$this->tareas_model->listar();

		$this->load->view('principal/dashboard',$this->datos);
	}
}
