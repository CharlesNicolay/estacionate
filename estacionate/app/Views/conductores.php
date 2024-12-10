 <section class="content-header">
          <h1>
            Conductores 
           
          </h1>
          <ol class="breadcrumb">
            <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
         
          </ol>
</section>
<section style="margin-left: 20px; padding-top: 20px;">
<div class="row">
	<div class="col-md-12" style="text-align: left; margin-bottom: 20px;">
		
		
	</div>
	<div class="col-md-12">
		<table class="table" style="width:70%; margin:auto ;">
		  <thead class="thead-light">
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">Placa</th>
		      <th scope="col">Celular</th>
		      <th scope="col">Opciones</th>
		    </tr>
		  </thead>
		  <tbody>

		  	<?php $cont = 0; foreach ($conductores as $key) {
		  		
		  		?>

		    <tr>
		      <th scope="row"><?php echo$cont; ?> </th>
		      <td><?php echo $key['nombre'].' '.$key['apellidos'];?> </td>
		      <td><?php echo $key['placa'];?></td>
		      <td><?php echo $key['celular']?></td>
		      <td><a href="<?php echo base_url(); ?>/editar_estacionamiento" class="btn btn-warning" role="button" ><i class="fa fa-pencil-square-o"></i></a>  <a href="<?php echo base_url(); ?>eliminar_estacionamiento" class="btn btn-danger" role="button" ><i class="fa fa-trash-o"></i></a></td>
		    </tr>
		   
			<?php $cont++;}?>
		  </tbody>
		</table>
		
		
	</div>

</div>

</section>