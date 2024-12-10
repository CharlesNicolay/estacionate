<?php

namespace App\Controllers;

use App\Models\CaracteristicaModel;
use App\Models\EstacionamientoModel;
use App\Models\CaractEstacionamientoModel;
use App\Models\ConductorModel;

class HomeController extends BaseController
{
    public function index(): string
    {
       return view('layaouts/header_admin').view('dashboard_admin').view('layaouts/footer');
    }
    
    public function ver_estacionamientos()
    {
       $estacionamiento = new EstacionamientoModel();
       $est = $estacionamiento->orderBy('id_estacionamiento')->findall();
       $estcar = new CaractEstacionamientoModel();
       $caract =[];
       $cont = 0;
       foreach ($est as $key ) {
          $caract[$cont++] = $estcar->join('caracteristicas','caracteristicas.id_caracteristica =caract_estacionamiento.id_caracteristica')->where('id_estacionamiento',$key['id_estacionamiento'])->findall();
       }

       $data = [
         'datos'=>$est,
         'caract'=>$caract
       ];
       return view('layaouts/header_admin').view('estacionamientos',$data).view('layaouts/footer');
    }
    public function agregar_estacionamiento()
    {
      $modelo = new CaracteristicaModel();
      $data2 = $modelo->obtenertodos();
      $data =['editar'=>'','datos'=> $data2];
      return view('layaouts/header_admin').view('nuevo_est',$data).view('layaouts/footer');
    }
    public function post_add_estacionamiento(){
       $request= \Config\Services::request();

        $opciones = $this->request->getPost('opciones');
        $nombre = $this->request->getPost('nombre');
        $latitud = $this->request->getPost('latitud');
        $longitud = $this->request->getPost('longitud');
        $capacidad = $this->request->getPost('capacidad');
        $clave = $this->request->getPost('palabras_clave');
        
        $data =['nombre'=>$nombre,
               'latitud' =>$latitud,
               'longitud' => $longitud,
               'capacidad' =>$capacidad,
               'palabras_clave' =>$clave];

        $estacionamiento = new EstacionamientoModel();
        $id_estacionamiento = $estacionamiento->insertarDatos($data);
        $caractEstModel = new CaractEstacionamientoModel();
        for ($i=0; $i <sizeof($opciones) ; $i++) { 
           
           $data =['id_estacionamiento'=>$id_estacionamiento,
                   'id_caracteristica'=>$opciones[$i] ];
           $caractEstModel->insertarDatos($data);
        }
        return redirect()->to(base_url('ver_estacionamientos'));
    }
    public function ver_conductores(){
         $model = new ConductorModel();
         $conductores =$model->obtenertodos();
         $data =[
            'conductores' => $conductores];
         return view('layaouts/header_admin').view('conductores',$data).view('layaouts/footer');
    }
    public function editar_estacionamiento(){
       $request= \Config\Services::request();
       $id=$request->getUri()->getSegment(2);

       $modelo = new EstacionamientoModel();
       $datos = $modelo->obtener(['id_estacionamiento'=>$id]);
       $modelo2 = new CaracteristicaModel();
       $data2 = $modelo2->obtenertodos();
       
       $data =[
         'editar'=>'1',
         'data' => $datos,
         'datos'=>$data2];
      return view('layaouts/header_admin').view('nuevo_est',$data).view('layaouts/footer');
    }
    public function post_editar_estacionamiento(){

       $request= \Config\Services::request();
       $id = $request->getPost('id');
       $data =[
         'nombre' =>$request->getPost('nombre'),
         'latitud' =>$request->getPost('latitud'),
         'longitud' =>$request->getPost('longitud'),
         'capacidad' =>$request->getPost('capacidad'),
         'palabras_clave' =>$request->getPost('palabras_clave')
      ];
      $modelo = new EstacionamientoModel();
      $modelo->actualizarDatos($id,$data);
      return redirect()->to(base_url('ver_estacionamientos'));
    }
    public function eliminar_estacionamiento(){
       $request= \Config\Services::request();
       $id=$request->getUri()->getSegment(2);
       $modelo = new EstacionamientoModel();
       $datos = $modelo->eliminarDatos($id);
       return redirect()->to(base_url('ver_estacionamientos'));
    }
    
     public function ver_caracteristicas(){
         $model = new CaracteristicaModel();
         $carac =$model->obtenertodos();
         $data =[
            'datos' => $carac];
         return view('layaouts/header_admin').view('caracteristicas',$data).view('layaouts/footer');
    }
     public function agregar_caracteristica()
    {
      
      $data =['editar'=>''];
      return view('layaouts/header_admin').view('nueva_carac',$data).view('layaouts/footer');
    }
    public function post_add_caracteristica(){
       $request= \Config\Services::request();

        $nombre = $this->request->getPost('nombre_caracteristica');
        
        $data =['nombre_caracteristica'=>$nombre];

        
        $caract= new CaracteristicaModel();
        $caract->insertarDatos($data);
        return redirect()->to(base_url('ver_caracteristicas'));
    }
    public function editar_caracteristica(){
       $request= \Config\Services::request();
       $id=$request->getUri()->getSegment(2);

       $modelo2 = new CaracteristicaModel();
       $data2 = $modelo2->obtener(['id_caracteristica'=>$id]);
       
       $data =[
         'editar'=>'1',
         'data'=>$data2];
      return view('layaouts/header_admin').view('nueva_carac',$data).view('layaouts/footer');
    }
    public function post_editar_caracteristica(){

       $request= \Config\Services::request();
       $id = $request->getPost('id');
       $data =[
         'nombre_caracteristica' =>$request->getPost('nombre_caracteristica')
      ];
      $modelo = new CaracteristicaModel();
      $modelo->actualizarDatos($id,$data);
      return redirect()->to(base_url('ver_caracteristicas'));
    }
   
    public function salir(){
       return redirect()->to(base_url('login'));
    }

}
