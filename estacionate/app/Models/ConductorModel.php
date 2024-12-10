<?php namespace App\Models;

use CodeIgniter\Model;

class ConductorModel extends Model
{
	protected $table = 'conductores';
        protected $allowedFields = ['id_conductor','nombre','apellidos','placa','celular','id_user'];
      
        public function obtenercliente($data) {
                        $cliente = $this->db->table($this->table);
                        $cliente->where($data);
                        
                        return $cliente->get()->getResultArray();
        }
        public function obtenertodos() {
                        $cliente = $this->db->table($this->table);
                        $cliente->select('*');
                        
                        return $cliente->get()->getResultArray();
        }
        public function insertarDatos($data){
                        $cliente = $this->db->table($this->table);
                         $cliente->insert($data);
        }
        public function actualizarDatos($id,$data){
                        $table = $this->db->table($this->table);
                        $id_s = ['id_conductor'=> $id];
                        $table->where($id_s);
                        $table->update($data);
        }
        public function eliminarDatos($id){
                        $table = $this->db->table($this->table);
                        $id_s = ['id_conductor'=> $id];
                        $table->where($id_s);
                        $table->delete();
        }
        
}