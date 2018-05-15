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
  	
  		<?php
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
				      require_once'estructura/menu_usuarios.php';			      		
				    ?>
				</div>
				<!-- Fin del menu -->

				<!-- Logo de Vencer -->
				<div class="col-md-10" align="center">	
					 <img class="logo" src="../utilidad/img/logo_usuarios.png" title="Usuarios">						
				</div>
				<!-- Fin del logo -->

				<div class="col-md-10 col-md-offset-2">
					<div class="thumbnail">
						<!-- Menu Dinamico -->
						<div class="tabbable" id="tabs-351531">						
							<ul id="nav-menu1" class="nav nav-tabs">
								<li id="usuarios" class="hover-shadow" ><a href="Usuarios">Usuario</a></li>		
								<?php
									session_start();
									if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager Area Tecnica") {
									echo '
										<li align="right"><a class="logo_download" href="reporte_usuarios.php" title="Reporte de Usuarios"><img src="../utilidad/img/pdf_download.png" title="Reporte de Usuarios"></a></li>
									';
									}
								?>
							</ul>
						</div>
						<!-- Fin del Menu 2 Dinamico -->			
						<ul class="breadcrumb">
							<li><a href="home">Inicio</a><span class="divider"></span></li>
							<li class="active">Usuarios</li>
							<li><button class="Add_contenido grow" href="#Usuario" data-toggle="modal" title="Registrar Usuario">[ <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Nuevo Usuario]</button></li>	
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
													<th>Nombres</th>
													<th>Apellidos</th>
													<th>Cedula</th>
													<th>Rol</th>											
													<th>Correo</th>											
													<th></th>											 
												</tr>
											</thead>					
										</table>
									</div>			
								</div>		
							</div>
						
						<?php
						/*
								include("utilidad/php/Conexion.php");	

								$con = mysql_connect($host,$user,$pw)or die("problemas al conectar");
								mysql_select_db($db,$con)or die("Problemas al conectar");							

								$selecusuario = mysql_query("SELECT * FROM usuarios_wiki",$con);

								while($sesionusuario = mysql_fetch_array($selecusuario)){

									echo '<p>'.$sesionusuario['NOMBRES'].'</p>';
								}
						*/
						?>

					</div> <!-- Fin del thumbnail-->	
				</div> <!-- Fin-Contenido del link 10 columnas -->
			</div> <!-- Fin del Row -->
				
	    </div> <!-- Fin del container-fluid --><br><br><br><br>	 
			
			<?php
				require_once'estructura/ventanas_modals.php';
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
						"url": "utilidad/php/listar_usuarios.php"
					},

					"columns":[
						{"data":"NOMBRES"},
						{"data":"APELLIDOS"},
						{"data":"CEDULA"},
						{"data":"ROL"},
						{"data":"EMAIL"},						
						{"defaultContent": "<button type='button' class='editar btn btn-primary' data-toggle='modal' data-target='#modalEditar'><span class='glyphicon glyphicon-pencil'></span></button><button type='button' class='eliminar btn btn-danger' data-toggle='modal' data-target='#modalEliminar'><span class='glyphicon glyphicon-remove'></span></button>"}	
					],
					"language" : idioma_espanol
				});
				obtener_data_editar("#dt_usuario tbody", table);
				obtener_id_eliminar("#dt_usuario tbody", table);
			}

			var obtener_data_editar = function(tbody, table){
				$(tbody).on("click", "button.editar", function(){
					//para obtener data por cada una de las filas
					var data = table.row( $(this).parents("tr") ).data();
					//console.log(data);
					var ID_USUARIO = $("#id_usuario").val(data.ID_USUARIO),
					    NOMBRES = $("#nombres").val(data.NOMBRES),
					    APELLIDOS = $("#apellidos").val(data.APELLIDOS),
					    CEDULA = $("#cedula").val(data.CEDULA),
					    CLAVE = $("#clave").val(data.CLAVE),
					    CLAVE = $("#rclave").val(data.CLAVE),
					    EMAIL = $("#email").val(data.EMAIL);							
				});
			}

			var obtener_id_eliminar = function(tbody, table){
				$(tbody).on("click", "button.eliminar", function(){
					//para obtener data por cada una de las filas
					var data = table.row( $(this).parents("tr") ).data();
					//console.log(data);
					var ID_USUARIO = $("#eid_usuario").val(data.ID_USUARIO);						
					var ROL = $("#rol_usu").val(data.ROL);						
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
			    "sSearch":         "Buscar usuario:",
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


			