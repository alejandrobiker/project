<!DOCTYPE html>
<html lang="es">

  	<head>
	  	<?php
	    	require_once'estructura/head.php';

  			session_start();
			if(!isset($_SESSION['usernombre']))
				header("location:home");
		
	    ?>		
	    <!-- Buttons DataTables -->
		<link rel="stylesheet" href="../utilidad/css/dataTables.bootstrap.min.css">
		<link rel="stylesheet" href="../utilidad/css/buttons.bootstrap.min.css">
		<link rel="stylesheet" href="../utilidad/css/font-awesome.min.css">
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
					<section class="menu menu_fixed">
						<div class="list-group">					
							<!-- <div class="list-group-item"> -->
							<div class="flip3D" align="center">
								<div class="back">
									<img class="logo_wiki" src="../utilidad/img/wiki.png">
								</div>
								<div class="front">
									<img class="logo_wiki" src="../utilidad/img/suscerte2.png">
								</div>		
							</div>
							<img class="wiki_letra" src="../utilidad/img/wiki_letra.png">

							<div>
							<header>
								<div class="menu_bar">
									<a href="#" class="bt-menu"> <span class="glyphicon glyphicon-menu-hamburger"></span> Menu</a>
								</div>
								<nav>
									<ul class="menu">
										<li class="letra_efecto"><a href="home"><span class="glyphicon glyphicon-triangle-left" aria-hidden="true"></span> Regresar</a></li><br>
										<li class="letra_admin_efecto">Bitácora POP</li>
									<hr>							
									</ul>					
								</nav>
							</header>
							</div>
						</div>
					</section>
				</div>
				<!-- Fin del menu -->

				<!-- Logo de Vencer -->
				<div class="col-md-10" align="center">	
					 <img class="logo" src="../utilidad/img/bitacora.png" title="Bitácora">						
				</div>
				<!-- Fin del logo -->

				<div class="col-md-10 col-md-offset-2">
					<div class="thumbnail">
						<!-- Menu Dinamico -->
						<div class="tabbable" id="tabs-351531">						
							<ul id="nav-menu1" class="nav nav-tabs">
								<li id="usuarios" class="hover-shadow" ><a href="bitacora">Bitácora</a></li>		
								<?php
									session_start();
									if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager P O P") {
									echo '
										<li align="right"><a class="logo_download" href="reporte_bitacora.php" title="Reporte de bitácora"><img src="../utilidad/img/pdf_download.png" title="Reporte de bitácora"></a></li>
									';
									}
								?>
							</ul>
						</div>
						<!-- Fin del Menu 2 Dinamico -->			
						<ul class="breadcrumb">
							<li><a href="index">Inicio</a><span class="divider"></span></li>
							<li class="active">Bitácora POP</li>
						</ul>
							
							<div class="row">
								<div id="cuadro1" class="col-sm-12 col-md-12 col-lg-12">
									<div class="col-sm-offset-2 col-sm-8">
										<h3 class="text-center"> <small class="mensaje"></small></h3>
									</div>
									<div class="table-responsive col-sm-12">		
										<table id="dt_usuario" class="table table-bordered table-hover" cellspacing="0" width="100%">
											<thead>
												<tr>		
													<th>ID_Bitacora</th>
													<th>Cédula</th>
													<th>IP</th>
													<th>Fecha y Hora</th>
													<th>Acción</th>											
													<th>Tabla</th>												 
												</tr>
											</thead>					
										</table>
									</div>			
								</div>		
							</div>
					</div> <!-- Fin del thumbnail-->	
				</div> <!-- Fin-Contenido del link 10 columnas -->
			</div> <!-- Fin del Row -->
				
	    </div> <!-- Fin del container-fluid --><br><br><br><br>	 
			
			<?php
		      	require_once'../estructura/footer.php';
		    ?>	

		    <script src="../utilidad/js/jquery-1.12.3.js"></script>
			<script src="../utilidad/js/jquery.dataTables.min.js"></script>
			<script src="../utilidad/js/dataTables.bootstrap.js"></script>
			<!--botones DataTables-->	
			<script src="../utilidad/js/dataTables.buttons.min.js"></script>
			<script src="../utilidad/js/buttons.bootstrap.min.js"></script>
				

		<script>

			$(document).on("ready", function(){
				listar();
			});

			var listar = function(){
				var table = $("#dt_usuario").DataTable({
					"destroy":true,
					"ajax":{
						"method":"POST",
						"url": "utilidad/php/listar_bitacora.php"
					},

					"columns":[
						{"data":"ID_BITACORA"},
						{"data":"UCEDULA"},
						{"data":"HOST"},
						{"data":"FECHA"},
						{"data":"ACCION"},
						{"data":"TABLA"}
					],
					"language" : idioma_espanol
				});				
			}			

			var idioma_espanol = {
			    "sProcessing":     "Procesando...",
			    "sLengthMenu":     "Mostrar _MENU_ registros",
			    "sZeroRecords":    "No se encontraron resultados",
			    "sEmptyTable":     "Ningún dato disponible en esta tabla",
			    "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
			    "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
			    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
			    "sInfoPostFix":    "",
			    "sSearch":         "Buscar Bitácora:",
			    "sUrl":            "",
			    "sInfoThousands":  ",",
			    "sLoadingRecords": "Cargando...",
			    "oPaginate": {
			        "sFirst":    "Primero",
			        "sLast":     "Último",
			        "sNext":     "Siguiente",
			        "sPrevious": "Anterior"
			    },
			    "oAria": {
			        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
			        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
			    }
			}
			
		</script>
  	</body>
</html>


			