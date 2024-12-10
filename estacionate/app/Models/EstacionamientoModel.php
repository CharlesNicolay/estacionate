<?php namespace App\Models;

use CodeIgniter\Model;

class EstacionamientoModel extends Model
{
	protected $table = 'estacionamientos';
        protected $allowedFields = ['id_estacionamiento','nombre','latitud','longitud','capacidad','palabras_clave'];
      
        public function obtener($data) {
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
                       if ($this->insert($data)) {
                            return $this->insertID(); // Devuelve el ID del usuario insertado
                        }
                        return false;
        }
        public function actualizarDatos($id,$data){
                        $table = $this->db->table($this->table);
                        $id_s = ['id_estacionamiento'=> $id];
                        $table->where($id_s); 
                        
                        $table->update($data);
        }
        public function eliminarDatos($id){
                        $table = $this->db->table($this->table);
                        $id_s = ['id_estacionamiento'=> $id];
                        $table->where($id_s);
                        $table->delete();
        }
        
}