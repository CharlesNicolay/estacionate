<?php

namespace App\Controllers;

use App\Models\UserModel;
use App\Models\ConductorModel;
class LoginController extends BaseController
{

    public function login(){
          return view('login');
    }
    public function registro(){
          return view('registro');
    }
    public function post_registro()
    {
        $request= \Config\Services::request();
        $celular = $request->getPostGet('celular');
        $password = $request->getPostGet('password');
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);
        $data = [
            'username' => $celular,
            'password' => $hashed_password,
            'rol'=>'1'
        ];
        $modelo = new UserModel();
        $id_user = $modelo->insertarDatos($data);
        $data2 = [
            'nombre' => $request->getPostGet('nombre'),
            'apellidos' => $request->getPostGet('apellidos'),
            'placa' => $request->getPostGet('placa'),
            'celular' => $celular,
            'id_user' =>$id_user
        ];
        $modelo = new ConductorModel();
        $id_user = $modelo->insertarDatos($data2);

         return redirect()->to(base_url('login'));

    }
    public function login_user() {
        $request= \Config\Services::request();
        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');

            // Cargar el modelo
            $userModel = new UserModel();

            // Buscar el usuario por nombre de usuario
            $user = $userModel->where('username', $username)->first();

            if ($user) {
                // Verificar la contraseña
                if (password_verify($password, $user['password'])) {
                    // Iniciar sesión
                    session()->set('logged_in', true);
                    session()->set('user_id', $user['id_user']);
                    if($user['rol'] == 1){

                    }else if($user['rol'] == 99){
                        return redirect()->to(base_url('admin'));
                    }
                    return redirect()->to('http://localhost:8080/estacionate/'); // Redirigir a la página deseada
                } else {
                    // Contraseña incorrecta
                    return redirect()->back()->with('error', 'Contraseña incorrecta.');
                }
            } else {
                // Usuario no encontrado
                return redirect()->back()->with('error', 'Usuario no encontrado.');
            }
    }
    
    public function show_users(){
        return view('layaouts/header',$data).view('user/show_users').view('layaouts/footer');
    }

    public function show_detail_user(){
        return view('layaouts/header',$data).view('user/show_detail_user').view('layaouts/footer');
    }

    public function vista_add_user(){
        return view('layaouts/header',$data).view('user/show_add_user').view('layaouts/footer');
    }
    public function delete_user(){

       return redirect()->to(base_url('show_users'));
    }
 


}