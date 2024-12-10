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
    <form action="<?php echo($editar)?base_url('post_editar_caracteristica'):base_url('post_add_caracteristica')?>" method="POST" enctype="multipart/form-data">
      
    <div class="row registro" style="width:80%; text-align: right;">
       <input type="hidden" class="form-control"  name="id" value="<?php echo($editar)?$data[0]['id_caracteristica']:'';?>">
      <div class="col-md-6"  >
        <label for="nombre_alumno">Caracteristica</label>
      </div>
      <div class="col-md-6">
        <input type="text" class="form-control"  name="nombre_caracteristica" value="<?php echo($editar)?$data[0]['nombre_caracteristica']:'';?>" maxlength="30">
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
