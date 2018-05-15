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
					<img class="logo" src="../utilidad/img/logo_vencert.png">
				</div>

				<!-- Contenido del link 10 columnas-->
				<div class="col-md-10">

					<?php
				      require_once'estructura/carrousel.php';
			   	    ?>

			        <article class="servicios">
			    		<!-- <h1 class="unidad" align="center">VENCERT</h1> -->
			            <div class="col-md-12">
			               <p><br>Es el Sistema Nacional de Gestión de Incidentes Telemáticos de la República Bolivariana de Venezuela. Su principal objetivo, como CERT gubernamental es la prevención, detección y gestión de los incidentes telemáticos generados en los sistemas de información de la Administración Pública Nacional y los Entes Públicos a cargo de la gestión de Infraestructuras Críticas de la Nación.
			               </p>
			            </div>
			        </article>

					<article class="servicios">
						<h1 class="unidad" align="center"><br><br>SERVICIOS</h1>

							<div class="col-md-2">
								<img class="img_index" src="../utilidad/img/logo_vencert.png" alt="">
							</div>
							<div class="col-md-10">
								<h3>Gestión de Incidentes </h3>
								<p>Es un área de procesos perteneciente a la gestión de servicios de tecnologías de la información...</p>
							</div>

							<div class="col-md-10">
								<h3>Seguridad Lógica</h3>
								<p>Se refiere a la seguridad en el uso de software y los sistemas, la protección de los datos, procesos y programas, así como la del acceso ordenado y autorizado de los usuarios a la información.</p>
							</div>
							<div class="col-md-2">
								<img class="img_index" src="../utilidad/img/logo_vencert.png" alt="">
							</div>

							<div class="col-md-12">
								<div class="col-md-2">
									<img class="img_index" src="../utilidad/img/logo_vencert.png" alt="">
								</div>
								<div class="col-md-10">
									<h3>OAM</h3>
									<p>Es un protocolo de uso a nivel mundial en las redes de telecomunicaciones</p>
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
