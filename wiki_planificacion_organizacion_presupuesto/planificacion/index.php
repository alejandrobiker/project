<!DOCTYPE html>
<html lang="es">

  	<head>
	  	<?php
	      require_once'estructura/head.php';
	      require_once("../../utilidad/php/PHPPaging.lib.php");
	    ?>		

  	</head>		

  	  	<body onload="Reloj()">			
  	
  		<?php
  			include('utilidad/php/registrar_con.php');
  			include('utilidad/php/modales_modificar.php');
  			include('utilidad/php/modales_eliminar.php');
  		?>

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
				      	
						include("../../utilidad/php/Suscerte.php");
						include("../utilidad/php/Organizacion_Planificacion_Presupuesto.php");
						include("utilidad/php/Planificacion.php");						

						
						$obj = new Planificacion();
                        $obj->Mostrar_Titulos();
				    ?>
				</div>
				<!-- Fin del menu -->

				<!-- Logo de Vencer -->
				<div class="col-md-10" align="center">
					<h2 class="unidad">Planificación </h2>
					<!-- <a href="vencert.php"><img class="logo_vencert" src="utilidad/img/logo_vencert.png"></a> -->	
				</div>
				<!-- Fin del logo -->

				<!-- Contenido del link 10 columnas-->				
						<div class="col-md-10">
							<div class="thumbnail">
								<!-- Menu Dinamico -->
								<div class="tabbable" id="tabs-351531">						
									<ul id="nav-menu1" class="nav nav-tabs">
										<li id="articulo" class="hover-shadow" ><a href="index">Artículo</a></li>
										<li id="manual" class="hover-shadow" ><a href="manual">Manual</a></li>
										<li id="tutoriales" class="hover-shadow"><a href="tutoriales">Tutoriales</a></li>				
										<?php
										if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager P O P" || $_SESSION['userrol'] == "Usuario Planificacion") {
										echo'<li><a class="logo_download" href="reporte_wikipdf.php" title="Reporte de Artículo"><img src="../../utilidad/img/pdf_download.png"></a></li>';
										}
										?>
									</ul>	
								</div>
								
						<!-- Fin del Menu 2 Dinamico -->			
						<ul class="breadcrumb">
							<li><a href="index.php">Inicio</a><span class="divider"></span></li>
							<li class="active">Artículo</li>							      
								<?php

								session_start();
						                
						                	if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager P O P" || $_SESSION['userrol'] == "Usuario Planificacion") {
						                						      echo'
							<li><button class="Add_contenido grow" href="#Vencert_articulo" data-toggle="modal" title="Agregar Contenido">[ <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo contenido]</button></li> ';


							} ?>    			
						</ul>
						

					
						<div class="row">	

						<?php
							
							$obj = new Planificacion();
	                        $obj->Mostrar();

						?>
								
							<!-- Ventanas modales para registrar -->
		             	    	<?php 
				           			require_once'estructura/ventanas_modals.php';
				           		?>
							<!-- Fin de las Ventanas modales para registrar -->       
							
						</div> <!-- Fin del Row -->		

						<script type="text/javascript">
							editorwiki = CKEDITOR.replace("contenido_pl");
							CKFinder.setupCKEditor(editorwiki, 'http://localhost/wiki/wiki_planificacion_organizacion_presupuesto/planificacion/index.php');
							 
						</script>
						
						<script type="text/javascript">
							 editorcontenido = CKEDITOR.replace("descripcion_pl");
							 CKFinder.setupCKEditor(editorcontenido, 'http://localhost/wiki/wiki_planificacion_organizacion_presupuesto/planificacion/index.php');
						</script>

					</div> <!-- Fin del thumbnail-->	
				</div> <!-- Fin-Contenido del link 10 columnas -->
			</div> <!-- Fin del Row -->
	    </div> <!-- Fin del container-fluid -->	 

			<?php
		      require_once'../../estructura/footer.php';
		    ?>	

  	</body>
</html>


