<section class="content-header" style="margin-bottom:50px;">
          <h1>
            Agregar Estacionamiento
            
          </h1>
          <ol class="breadcrumb">
         
          </ol>
</section>
<style type="text/css">
  .table{
        border-top: black 2px solid;
    border-color: black;
    background-color: #d6d6d6;
  }
</style>
<section>
 
  <div class="container" >
    <form action="<?php echo($editar)?base_url('post_editar_estacionamiento'):base_url('post_add_estacionamiento')?>" method="POST" enctype="multipart/form-data">
      
    <div class="row registro" style="width:80%; text-align: right;">
       <input type="hidden" class="form-control"  name="id" value="<?php echo($editar)?$data[0]['id_estacionamiento']:'';?>">
      <div class="col-md-6"  >
        <label for="nombre_alumno">Nombre del estacionamiento</label>
      </div>
      <div class="col-md-6">
        <input type="text" class="form-control"  name="nombre" value="<?php echo($editar)?$data[0]['nombre']:'';?>" maxlength="50">
      </div>
      <div class="col-md-6"  >
        <label for="apellido_alumno">Latitud</label>
      </div>
      <div class="col-md-6">
        <input type="text" class="form-control" id="latitud" name="latitud" value="<?php echo($editar)?$data[0]['latitud']:'';?>">
      </div>
      <div class="col-md-6"  >
        <label for="apellido_alumno">Longitud</label>
      </div>
      <div class="col-md-6">
        <input type="text" class="form-control"  id="longitud" name="longitud" value="<?php echo($editar)?$data[0]['longitud']:'';?>">
      </div>
      <div class="col-md-6"  >
        <label for="numero_alumno">Capacidad</label>
      </div>
      <div class="col-md-6">
        <input type="number" class="form-control" name="capacidad" value="<?php echo($editar)?$data[0]['capacidad']:'';?>" min="1" max="999">
      </div>
      <div class="col-md-6"  >
        <label for="numero_alumno">Palabras clave</label>
      </div>
      <div class="col-md-6">
        <input type="text" class="form-control" name="palabras_clave" value="<?php echo($editar)?$data[0]['palabras_clave']:'';?>" maxlength="250">
      </div>
      <div class="col-md-6"  >
        <label for="fecha_nacimiento">Caracteristicas</label>
      </div>
      <div class="col-md-6" style="height:auto; text-align: left;">
        <div class="row">
        <?php 

          foreach ($datos as $key) {
            // code...
          ?>
          
            <div class="col-md-4">
               <input  type="checkbox" id="opcion<?php echo $key['id_caracteristica']?>" name="opciones[]" value="<?php echo $key['id_caracteristica']?>"><label for="opcion<?php echo $key['id_caracteristica']?>"> <?php echo $key['nombre_caracteristica']; ?></label>
            </div>
          
        
           <?php }?>      
           </div>
      </div>
      
      <div class="col-md-6"> 
        
      </div>
      <div class="col-md-6" style="text-align: right;">
        <button type="submit" class="btn btn-success mb-3" style="width: 100%">Agregar</button>
      </div>
    </div>
    </form>
  </div>
</section>
<?php
if($editar ==''){
?>

<script>
       document.addEventListener("DOMContentLoaded", function() {
            obtenerUbicacion();
        });
        function obtenerUbicacion() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    document.getElementById("latitud").value = position.coords.latitude;
                    document.getElementById("longitud").value = position.coords.longitude;
                }, function() {
                    alert("Error al obtener la ubicación.");
                });
            } else {
                alert("La geolocalización no es compatible con este navegador.");
            }
        }
    </script>
  <?php }  ?>