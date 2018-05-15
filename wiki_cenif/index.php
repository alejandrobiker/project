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
					<img class="logo" src="../utilidad/img/cenif.png">
				</div>

				<!-- Contenido del link 10 columnas-->
				<div class="col-md-10">

					<?php
				      require_once'estructura/carrousel.php';
			   	    ?>

		            <article class="servicios">
		        		<!-- <h1 class="unidad" align="center">CENIF</h1> -->
		        		<div class="col-md-12">
				            <p><br>El Centro Nacional de Informática Forense (CENIF), es un laboratorio de informática forense para la adquisición, análisis, preservación y presentación de las evidencias relacionadas a las tecnologías de información y comunicación, con el objeto de prestar apoyo a los cuerpos de investigación judicial órganos y entres del Estado que así lo requieran.</p>
			            </div>
		            </article>

          			<article class="servicios">
						<h1 class="unidad" align="center"><br>SERVICIOS</h1>

						<div class="col-md-2">
							<img class="img_index1" src="../utilidad/img/cenif.png" alt="">
						</div>
						<div class="col-md-10">
							<h3>Fuentes Abiertas </h3>
							<p>Es una metodología enseñada dentro de la inteligencia para fortalecer las herramientas y métodos de información libremente disponible de investigación.</p>
						</div>

						<div class="col-md-10">
							<h3>Equipos Móviles</h3>
							<p>Con la aparición de los equipos móviles (Teléfonos celulares, Tablet, etc) la comunicación a través de ese medio se hace más directa e intima, ya que le permite a los usuarios comunicarse desde cualquier lugar en que se encuentren. Los equipos móviles están presentes en todos los lugares, de forma que se ha generalizado de manera silenciosa y se ha deslizado hasta los lugares más intrínsecos de las actividades individuales.</p>
						</div>
						<div class="col-md-2">
							<img class="img_index" src="../utilidad/img/cenif.png" alt="">
						</div>

						<div class="col-md-12">
							<div class="col-md-2">
								<img class="img_index" src="../utilidad/img/cenif.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>Dispositivos de Almacenamiento</h3>
								<p>La informática forense es una rama de la ciencia forense que estudia las evidencias encontradas en computadoras y medios de almacenamiento digitales.</p>
							</div>
							<div class="col-md-10">
								<h3>Electronica</h3>
								<p>Los peritos forenses son los encargados de aplicar su habilidad científica en la recolección y la preservación de pruebas y el manejo de la cadena de custodia necesaria para esclarecer la verdad sobre el caso en cuestión.</p>
							</div>
							<div class="col-md-2">
								<img class="img_index" src="../utilidad/img/cenif.png" alt="">
							</div>
						</div>

							<div class="col-md-2">
								<img class="img_index" src="../utilidad/img/cenif.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>Imágenes, Audio y Video</h3>
								<p>En la actualidad, se vive en una sociedad que documenta su progreso diario a través de fotografías de nuestro entorno , videos de eventos o presentaciones que asisten y en algunos casos notas de voz o audio para expresar las ideas.</p>
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
