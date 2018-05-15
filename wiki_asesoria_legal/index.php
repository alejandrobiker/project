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
					<img class="logo" width="350px" src="../utilidad/img/logo_asesorialegal.png">	
				</div>

				<!-- Contenido del link 10 columnas-->				
				<div class="col-md-10">				

					<?php
				      require_once'estructura/carrousel.php';
			   	    ?>			
					
					<article class="servicios">
	    			    <!-- <h1 class="unidad" align="center"><br>ASESORÍA LEGAL</h1> -->
			            <div class="col-md-12">
			            <p><br>Se encarga de brindar la información jurídica a quien necesite de ello para la resolución de asuntos que tienen que ver con la aplicación de las leyes, normativas y reglamentos en cualquier materia del Derecho.</p>
			            </div>
		          	</article>

					<article class="servicios">
						<h1 class="unidad" align="center"><br><br>SERVICIOS</h1>

							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/asesoria.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>Dictámenes </h3>
								<p>Es un juicio desarrollado o comunicado respecto a alguna cuestión. El término no tiene una utilización demasiado frecuente en el lenguaje cotidiano, sino que está más asociado al ámbito judicial o legislativo.</p>
							</div>

							<div class="col-md-10">
								<h3>Convenios</h3>
								<p>Pueden ser valorados como contratos, normativas o una combinación de ambos. Entre las condiciones que contemplan los convenios colectivos, se encuentran la duración de la jornada laboral, los salarios, etc.</p>
							</div>
							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/asesoria.png" alt="">
							</div>
						
						<div class="col-md-12">
							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/asesoria.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>Pronunciamientos</h3>
								<p>Es una noción con diferentes alcances. En el ámbito del derecho, el término refiere a la orden o la declaración que emite un tribunal, un juez o una entidad a cargo de juzgar.</p>
							</div>
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


