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
					<img width="750px" src="../utilidad/img/logo_planificacion1.png">
				</div>

				<!-- Contenido del link 10 columnas-->
				<div class="col-md-10">

					<?php
				      require_once'estructura/carrousel.php';
			   	    ?>

              <article class="servicios">
        			   <!-- <h1 class="unidad" align="center"><br>ORGANIZACIÓN, PLANIFICACION Y PRESUPUESTO</h1> -->
                 <div class="col-md-12">
                   <p><br>Es el órgano de administración interna encargado de asesorar en el ámbito institucional, así como en el ámbito sectorial, cuando así lo disponga la normativa vigente, en materias de planeamiento estratégico, presupuesto público, inversión pública, modernización de la gestión pública, colaboración interinstitucional y cooperación técnica internacional.</p>
                 </div>

					<article class="servicios">
						<h1 class="unidad" align="center"><br>SERVICIOS</h1>

							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/planificacion.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>Organización </h3>
								<p>Las organizaciones son estructuras administrativas y sistemas administrativos creadas para lograr metas u objetivos por medio de los organismos humanos o de la gestión del talento humano y de otro tipo. Están compuestas por sistemas de interrelaciones que cumplen funciones especializadas.</p>
							</div>

							<div class="col-md-10">
								<h3>Planificación</h3>
								<p>Es el proceso metódico diseñado para obtener un objetivo determinado. En el sentido más universal, implica tener uno o varios objetivos a realizar junto con las acciones requeridas para concluirse exitosamente.</p>
							</div>
							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/planificacion.png" alt="">
							</div>

						<div class="col-md-12">
							<div class="col-md-2">
								<img class="img_index1" src="../utilidad/img/planificacion.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>Presupuesto</h3>
								<p>Es un plan de acción dirigido a cumplir una meta prevista, expresada en valores y términos financieros que, debe cumplirse en determinado tiempo y bajo ciertas condiciones previstas, este concepto se aplica a cada centro de responsabilidad de la organización.</p>
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
