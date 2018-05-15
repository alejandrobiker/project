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
					<img class="logo" src="../utilidad/img/logo_administracion.png">
				</div>

				<!-- Contenido del link 10 columnas-->
				<div class="col-md-10">

					<?php
				      require_once'estructura/carrousel.php';
			   	    ?>

					<div class="col-md-4">
						<img class="img_index1" src="utilidad/img/logo_vencert.png" alt="">
					</div>

					<article class="servicios">
						<!-- <h1 class="unidad" align="center">ADMINISTRACIÓN</h1> -->

							<div class="col-md-12">
								<p><br>Es una ciencia social compuesta de principios, técnicas y prácticas, cuya aplicación a conjuntos humanos permite establecer sistemas racionales de esfuerzo cooperativo, a través de los cuales se puede alcanzar propósitos comunes que individualmente no es factible lograr.</p>
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
