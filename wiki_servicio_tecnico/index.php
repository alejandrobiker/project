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
					<img width="400px" src="../utilidad/img/logo_areatecnica.png">
				</div>

				<!-- Contenido del link 10 columnas-->
				<div class="col-md-10">

					<?php
				      require_once'estructura/carrousel.php';
			   	    ?>

                 <article class="servicios">

	                 <!-- <h1 class="unidad" align="center"><br>ÁREA TÉCNICA</h1> -->
	                 <div class="col-md-12">
	                   <p><br>El objetivo de la Dirección Técnica es contribuir a aumentar la competitividad y eficacia de la empresa, a través de soluciones técnicas y tecnológicas de alto valor para nuestros clientes que permitan conseguir mejoras en los resultado, así como minimizar los riesgos técnicos asociados a las mismas.</p>
	                 </div>
	             </article>
					<article class="servicios">
						<h1 class="unidad" align="center"><br>SERVICIOS</h1>

							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/servicio_tecnico.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>Servicio de Certificación Electrónica y Criptográfica </h3>
								<p>Es el proceso mediante el cual se generan certificados electrónicos, garantizando la integridad de un documento digital o una acción cometida sobre éste.</p>
							</div>

							<div class="col-md-10">
								<h3> Investigación, Formación y Desarrollo</h3>
								<p>Se encarga de realizar charlas, cursos y talleres de formación en materia de seguridad de la información a funcionarios y funcionarias de instituciones públicas</p>
							</div>
							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/servicio_tecnico.png" alt="">
							</div>

						<div class="col-md-12">
							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/servicio_tecnico.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>Estandarización y Fiscalización</h3>
								<p>Proponer la implementación y posterior control de los estándares y normas en los Servicios de Certificación Electrónica y de los Sistemas de Seguridad de la Información instalados en los órganos y entes del Poder Público.</p>
							</div>
							<div class="col-md-10">
								<h3> Soporte Técnico</h3>
								<p>El soporte técnico es un rango de servicios por medio del cual se proporciona asistencia a los usuarios al tener algún problema al utilizar un producto o servicio, ya sea este el hardware o software de una computadora de un servidor de Internet, periféricos, artículos electrónicos, maquinaria, o cualquier otro equipo o dispositivo</p>
							</div>
							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/servicio_tecnico.png" alt="">
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
