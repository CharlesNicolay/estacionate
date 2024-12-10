<?php namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
	protected $table = 'usuarios';
        protected $primaryKey = 'id_user';
        protected $allowedFields = ['username','password','rol'];
     
        public function obteneruser($data) {
                        $user = $this->db->table($this->table);
                        $user->where($data);
                        
                        return $user->get()->getResultArray();
        }
        public function obtenertodos() {
                        $user = $this->db->table($this->table);
                        $user->select('*');
                        
                        return $user->get()->getResultArray();
        }
        public function insertarDatos($data){
                
                       if ($this->insert($data)) {
                            return $this->insertID(); // Devuelve el ID del usuario insertado
                        }
                        return false;
        }
        public function actualizarDatos($id,$data){
                        $table = $this->db->table($this->table);
                        $id_s = ['id_user'=> $id];
                        $table->where($id_s);
                        $table->update($data);
        }
        public function eliminarDatos($id){
                        $table = $this->db->table($this->table);
                        $id_s = ['id_user'=> $id];
                        $table->where($id_s);
                        $table->delete();
        }
        
}