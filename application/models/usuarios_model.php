<?php

class Usuarios_model extends CI_Model{
    public function listar(){
        $this->db->select("usuarios.*,if(ult_login IS NOT NULL ,DATE_FORMAT(ult_login,'%d/%m/%Y %H:%i:%s'),'Nunca') AS ult_login_humano, roles.nombre AS rol_texto");
        $this->db->order_by("usuario");

        $this->db->join("roles","usuarios.rol_id=roles.rol_id","inner");

        return $this->db->get("usuarios")->result_array();
    }
    /*
    Esta funcion toma usuario y password, devolviendo el usuario correcto o falso si no coincide
    */
    public function login($usuario="",$password=""){
        $this->db->where("usuario",$usuario);
        $this->db->where("password",md5($password));
        $this->db->limit(1);
        return $this->db->get("usuarios")->row_array();
    }

    function actualiza_ultimo_login($usuario_id=""){
        $this->db->where("usuario_id",$usuario_id);
        $this->db->set("ult_login","now()",false);
        $this->db->limit(1);
        $this->db->update("usuarios");
    }

    public function cambia_estado($usuario_id="",$estado=0){
        $this->db->set("estado",$estado);
        $this->db->where("usuario_id",$usuario_id);
        $this->db->limit(1);
        $this->db->update("usuarios");
        return $this->db->affected_rows();
    }

    public function borrar($usuario_id=""){
        $this->db->set("borrado",1);
        $this->db->where("usuario_id",$usuario_id);
        $this->db->limit(1);
        $this->db->update("usuarios");
        return $this->db->affected_rows();
    }
}