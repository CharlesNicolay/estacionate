<?php namespace App\Models;

use CodeIgniter\Model;

class CaracteristicaModel extends Model
{
	protected $table = 'caracteristicas';
        protected $allowedFields = ['id_caracteristica','nombre_caracteristica'];
      
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
                        $cliente = $this->db->table($this->table);
                         $cliente->insert($data);
        }
        public function actualizarDatos($id,$data){
                        $table = $this->db->table($this->table);
                        $id_s = ['id_caracteristica'=> $id];
                        $table->where($id_s);
                        $table->update($data);
        }
        public function eliminarDatos($id){
                        $table = $this->db->table($this->table);
                        $id_s = ['id_caracteristica'=> $id];
                        $table->where($id_s);
                        $table->delete();
        }
        
}