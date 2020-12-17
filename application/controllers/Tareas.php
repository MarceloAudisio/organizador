<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tareas extends CI_Controller {

    public $datos=array();

    public function __construct()
    {
        parent::__construct();

        if(!($this->session->userdata("usuario_id") and $this->session->userdata("usuario"))){
            redirect("acl");
        }
        //Cargo los modelos para todos los metodos
        $this->load->model("tareas_model");
    }
	public function index()
	{
		redirect("tareas/nueva");
    }
    
    public function nueva(){
        $this->load->library("form_validation");
        $this->form_validation->set_rules('titulo', 'Titulo', 'required');
        $this->form_validation->set_rules('descripcion', 'Descripcion', 'required');
        $this->form_validation->set_rules('prioridad', 'Prioridad', 'required');
        if(!$this->input->post("novence")){
            $this->form_validation->set_message('fecha_valida', '{field} Tiene que ser una fecha válida con el formato dd/mm/aaaa');
            $this->form_validation->set_rules('vence','Vence','callback_fecha_valida');
           
        }

        if ($this->form_validation->run() == FALSE){
            $this->load->view('tareas/formulario',$this->datos);   
        }else{
            $this->session->set_flashdata('msj', 'ALTA');
            
            $tarea=array();
            $tarea["titulo"]=set_value("titulo");
            $tarea["descripcion"]=set_value("descripcion");
            $tarea["prioridad_id"]=set_value("prioridad");
            $tarea["estado"]=EST_PENDIENTE_NO_VISTA;
            $tarea["usuario_id"]=$this->session->userdata("usuario_id");
            if(!$this->input->post("novence")){
                $tarea["vence"]=set_value("vence");
            }
            $cod=$this->tareas_model->nueva($tarea);


            redirect("tareas/nueva/".$cod);
        }


        
    }

    public function estado($tarea_id="",$estado=0){
        if($tarea_id!="" and in_array($estado,array(EST_PENDIENTE_NO_VISTA,EST_PENDIENTE_VISTA,EST_EN_PROGRESO,EST_TERMINADA,EST_DETENIDA,EST_DESCARTADA
        ))){
            $this->tareas_model->cambia_estado($tarea_id,$estado);
        }
        redirect("principal");
    }

    public function borrar($tarea_id=""){
        if($tarea_id!=""){
            $this->tareas_model->borrar($tarea_id);
        }
        redirect("principal");
    }

    public function ver($tarea_id=""){
        $tarea=$this->tareas_model->obtener_x_id($tarea_id);
        echo "<pre>";
        print_r($tarea);
        echo "</pre>";
    }

    /* Funciones de soporte */

    function fecha_valida($fecha){
        
        $dia = (int) substr($fecha, 8, 2);
        $mes = (int) substr($fecha, 5, 2);
        $anio = (int) substr($fecha, 0, 4);
        
        if(checkdate($mes, $dia, $anio)){
            
            return true;
        }else{
            
            return false;
        }
    }
}
