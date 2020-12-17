<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Acl extends CI_Controller {

	public function index()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('usuario', 'Usuario', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() == FALSE){
            $this->load->view('acl/login');
        }else{
			$this->load->model("usuarios_model");
			if($u=$this->usuarios_model->login(set_value("usuario"),set_value("password"))){
				$this->session->set_userdata("usuario_id",$u["usuario_id"]);
				$this->session->set_userdata("usuario",$u["usuario"]);
				$this->session->set_userdata("rol",$u["rol_id"]);
				$this->usuarios_model->actualiza_ultimo_login($u["usuario_id"]);
				redirect("principal");
			}else{
				redirect("acl");
			}
			
        }
	}
	public function salir(){
		$this->session->sess_destroy();
		redirect("acl");
	}
}
