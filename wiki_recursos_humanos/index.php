<!DOCTYPE html>
<html lang="es">

  	<head>
	  	<?php
	      require_once'estructura/head.php';
	    ?>
  	</head>		

  	<body> 
		<header>
			<?php
		      require_once'estructura/header.php';
		    ?>	
		</header>

	    <div class="container-fluid">
		  		
			<!-- CONTENIDO DE LA PAGINA DIVIDIDA EN 2 COLUMNAS, UNA DE 2 Y OTRA DE 10 -->
			<div class="row">
				<!-- Menu de Navegación principal -->
				<div class="col-md-2">
					<?php
				      require_once'estructura/menu_principal.php';
				    ?>
				</div>

				<!-- Logo de VenCERT -->
				<div class="col-md-10" align="center">
					<img width="500px" src="../utilidad/img/logo_rrhh.png">
				</div>

				<!-- Contenido del link 10 columnas-->				
				<div class="col-md-10">				

					<?php
				      require_once'estructura/carrousel.php';
			   	    ?>			
					
					<article class="servicios">
	    			    <!-- <h1 align="center"><br>Recursos Humanos</h1> -->
			            <div class="col-md-12">
			            	<p><br>Se denomina recursos humanos (RR. HH.) al trabajo que aporta el conjunto de los empleados o colaboradores de una organización, aunque lo más frecuente es llamar así al sistema o proceso de gestión que se ocupa de seleccionar, contratar, formar, emplear y retener al personal de la organización. Estas tareas las puede desempeñar tanto una persona, como un departamento en concreto junto a los directivos de la organización.</p>
			           	</div>
		          	</article>					
				
					<article class="servicios">
						<h1 align="center"><br><br>SERVICIOS</h1>

							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/rrhh.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>HCM </h3>
								<p>Es indemnizar al asegurado titular por los gastos razonables médicamente necesarios incurridos por el asegurado o sus familiares dependientes inscritos en la póliza.</p>
							</div>

							<div class="col-md-10">
								<h3>Nómina</h3>
								<p>Es la suma de todos los registros financieros de los sueldos de los empleados, incluyendo los salarios, las bonificaciones y las deducciones. En la contabilidad, la nómina se refiere a la cantidad pagada a los empleados por los servicios que prestaron durante un cierto período de tiempo.</p>
							</div>
							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/rrhh.png" alt="">
							</div>
					</article>								
				</div> <!-- Fin-Contenido del link 10 columnas -->
			</div> <!-- Fin del Row -->
		</div> <!-- Fin del container-fluid -->	 
			<?php
		      require_once'../estructura/footer.php';
		    ?> 
		
  	</body>
</html>


