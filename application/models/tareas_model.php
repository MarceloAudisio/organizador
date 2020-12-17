<?php

class tareas_model extends CI_Model{
    
    var $usuario_id="";

    public function set_usuario($usuario_id=""){
        $this->usuario_id=$usuario_id;
    }
    
    
    public function listar(){
        if($this->usuario_id!=""){
            $this->db->where("usuario_id",$this->usuario_id);
        }

        $this->db->select("tareas.*,DATE_FORMAT(fecha,'%d-%m-%Y %H:%i') as fecha_humano ,prioridades.nombre AS prioridad,estados.nombre as estado_nombre,IF(tareas.vence IS NOT NULL,DATE_FORMAT(tareas.vence,'%d-%m-%Y'),'N/D') as vence,IF(tareas.vence IS NOT NULL,IF(tareas.vence < NOW(),'SI','NO'),'NO') as vencio");

        $this->db->join("prioridades","tareas.prioridad_id=prioridades.prioridad_id","inner");
        $this->db->join("estados","tareas.estado=estados.estado_id","inner");

        $this->db->order_by("prioridad_id",PRIO_ALTA);
        $this->db->order_by("fecha","desc");


        return $this->db->get("tareas")->result_array();
    }

    public function nueva($datos){
        /*
        --tarea_id
        titulo
        descripcion
        prioridad
        --fecha
        --estado
        --usuario_id

        vence
        --orden
        */

        $this->db->insert("tareas",$datos);
        return $this->db->insert_id();
    }

    public function cambia_estado($tarea_id="",$estado=0){
        $this->db->set("estado",$estado);
        $this->db->where("tarea_id",$tarea_id);
        $this->db->limit(1);
        $this->db->update("tareas");
        return $this->db->affected_rows();
    }

    public function borrar($tarea_id=""){
        $this->db->where("tarea_id",$tarea_id);
        $this->db->limit(1);
        $this->db->delete("tareas");
        return $this->db->affected_rows();
    }

    public function obtener_x_id($tarea_id=""){
        $this->db->select("tareas.*,DATE_FORMAT(fecha,'%d-%m-%Y %H:%i') as fecha_humano ,prioridades.nombre AS prioridad,estados.nombre as estado_nombre,IF(tareas.vence IS NOT NULL,tareas.vence,'N/D') as vence,IF(tareas.vence IS NOT NULL,IF(tareas.vence < NOW(),'SI','NO'),'NO') as vencio");

        $this->db->join("prioridades","tareas.prioridad_id=prioridades.prioridad_id","inner");
        $this->db->join("estados","tareas.estado=estados.estado_id","inner");
        $this->db->limit(1);
        $this->db->where("tarea_id",$tarea_id);

        return $this->db->get("tareas")->row_array();
    }
}