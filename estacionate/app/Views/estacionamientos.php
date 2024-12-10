 <section class="content-header">
          <h1>
            Estacionamientos
            <small>Ver Estacionamientos</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
         
          </ol>
</section>
<section style="margin-left: 20px; padding-top: 20px;">
<div class="row">
	<div class="col-md-12" style="text-align: left; margin-bottom: 20px;">
		
		<div class="col-md-2" style="margin-bottom: 10px;">
				<a href="<?php echo base_url('agregar_estacionamiento')?>"><button class="btn btn-danger mb-3">Agregar Nuevo Estacionamiento</button></a>
		</div>
	</div>
	<div class="col-md-12">
		<table class="table" style="width:70%; margin:auto ;">
		  <thead class="thead-light">
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">Direccion</th>
		      <th scope="col">Capacidad</th>
		      <th scope="col">Detalles</th>
		      <th scope="col">Opciones</th>
		    </tr>
		  </thead>
		  <tbody>

		  	<?php $cont = 0; foreach ($datos as $key) {
		  		
		  		?>

		    <tr>
		      <th scope="row"><?php echo$cont; ?> </th>
		      <td><?php echo $key['nombre']?> </td>
		      <td><a href="https://www.google.com.pe/maps/@<?php echo $key['latitud'] .','.$key['longitud'];?>" >ver</a></td>
		      <td><?php echo $key['capacidad']?></td>
		      <td>

		      	<?php foreach($caract[$cont] as $val){
		      		echo $val['nombre_caracteristica'].' / ';
		      	} ?>
		      		

		      	</td>

		      <td><a href="<?php echo base_url(); ?>/editar_estacionamiento/<?php echo $key['id_estacionamiento']; ?>"class="btn btn-warning" role="button" ><i class="fa fa-pencil-square-o"></i></a>  <a href="<?php echo base_url(); ?>eliminar_estacionamiento/<?php echo $key['id_estacionamiento']; ?>"class="btn btn-danger" role="button" ><i class="fa fa-trash-o"></i></a></td>
		    </tr>
		   
			<?php $cont++;}?>
		  </tbody>
		</table>
		
		
	</div>

</div>

</section>