<?php

ini_set('display_errors', 0); // no muestra los errores

include("../../../../utilidad/php/Suscerte.php");
include("../../../utilidad/php/Recursos_Humanos.php");



class HCM extends Recursos_Humanos
{
	
	protected $id;
	protected $titulo;
	protected $tipo;
	protected $descripcion;
	protected $valor;
	protected $imagen;
	protected $fechan;
	protected $fechal;
	protected $hora;



	function HCM($titulo_,$tipo_)
	{
		
			$this->titulo=$titulo_;		
			$this->tipo=$tipo_;		

	}

	

	function Conectar(){



	}

	function ObtenerM($id_,$descripcion_,$tipo_){

		$this->id=$id_;
		$this->descripcion=$descripcion_;
		$this->tipo=$tipo_;

	}


	function ObtenerE($id_){
		$this->id=$id_;
	}
	

	function Registrar_Titulo(){

		include('../../../../utilidad/php/Conexion.php');

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
	
	      	mysql_query("INSERT INTO hcm_articulo_t (TITULO_HCMAT,TIPO,UCEDULA) VALUES ('$this->titulo','$this->tipo','$_SESSION[usercedula]')",$con);
			

	}

	function Registrar_Descripcion(){


		include('../../../../utilidad/php/Conexion.php');

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
					mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");		
	mysql_query("INSERT INTO hcm_articulo_d (ID_TITULO_HCMAT,DESCRIPCION_HCMAD,UCEDULA) VALUES ('$this->id','$this->descripcion','$_SESSION[usercedula]')",$con);
	
	
	}

	function Modificar_Titulo (){

	include('../../../../utilidad/php/Conexion.php');

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("UPDATE hcm_articulo_t set TITULO_HCMAT = '$this->descripcion', TIPO = '$this->tipo', UCEDULA = '$_SESSION[usercedula]' WHERE ID_HCMAT = '$this->id'",$con);


	}

	function Modificar_Descripcion (){

		include('../../../../utilidad/php/Conexion.php');
			

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("UPDATE hcm_articulo_d set DESCRIPCION_HCMAD = '$this->descripcion', UCEDULA = '$_SESSION[usercedula]' WHERE ID_HCMAD = '$this->id'",$con);

	}


	function Eliminar_Titulo(){

		include('../../../../utilidad/php/Conexion.php');


			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("DELETE FROM hcm_articulo_t WHERE ID_HCMAT = '$this->id'",$con);

	}

	function Eliminar_Descripcion(){

		include('../../../../utilidad/php/Conexion.php');

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("DELETE FROM hcm_articulo_d WHERE ID_HCMAD = '$this->id'",$con);

	}
	
	function Mostrar_Titulos(){

		include('../../utilidad/php/Conexion.php');
		$seleccionartitulo = new PHPPaging;

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

				$seleccionartitulo -> mysql_query("SELECT * FROM hcm_articulo_t",$con);					
				$seleccionartitulo->ejecutar();		
				while($sesion = $seleccionartitulo->mysql_fetch_array()){

					if ($sesion['TIPO'] != "privado" || $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {
					echo '
						<div >
							<ul class="menu">
							<li class="letra_efecto"><a href="#'.$sesion['ID_HCMAT'].'"> '.$sesion['TITULO_HCMAT'].'</a></li>
							</u>
						</div>
						';
					}
				}
	}

	function Mostrar(){

		include('../../utilidad/php/Conexion.php');
		$seleccionar = new PHPPaging;

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

				$seleccionar ->mysql_query("SELECT * FROM hcm_articulo_t",$con);					
				$seleccionar->ejecutar();	
				while($sesion = $seleccionar->mysql_fetch_array()){

					if ($sesion['TIPO'] != "privado" || $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {
						echo '
						<div class="col-lg-12 text-center">
							<section id="'.$sesion['ID_HCMAT'].'" class="about section">
								<h2 align="left" title="Tipo de contenido: '.$sesion['TIPO'].'" >'.$sesion['TITULO_HCMAT'].'</h2>	
							</section>	';

													session_start();
						                
						                	if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {

						                	echo'					
				
								<form action="index"  method="post" name="form" id="modificar">
									<input type="text" name="idmodificar_hcm_titulo" value="'.$sesion['ID_HCMAT'].'" hidden>
									<button class="botones" type="submit" data-toggle="tooltip" data-placement="top" title="Editar" value="Modificar"> [ <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> ] </button>
								</form>';											

								print '<form action="index"  method="post" name="form" id="eliminar">
									<input type="text" name="ideliminar_hcm_titulo" value="'.$sesion['ID_HCMAT'].'" hidden>
									<button class="botones" type="submit" data-toggle="tooltip" data-placement="top" title="Eliminar" value="Eliminar" > [ <span class="glyphicon glyphicon-remove aria-hidden="true"></span> ]										
									</button>
								</form>

								<form action="index"  method="post" name="form">
									<input type="text" name="registrar_contenido_hcm" value="'.$sesion['ID_HCMAT'].'" hidden>
									<button class="botones" type="submit" data-toggle="tooltip" data-placement="top" title="Agregar Contenido" value="Regitrar Contenido" >[ <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> ]
									</button>
								</form><br><hr>	';}
								echo'
						</div>';
					}

				$seleccdes = mysql_query("SELECT * FROM hcm_articulo_d WHERE '$sesion[ID_HCMAT]' = ID_TITULO_HCMAT",$con);			

				while($sesionwiki = mysql_fetch_array($seleccdes)){

					if ($sesion['TIPO'] != "privado" || $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {
						echo '<div class="col-lg-12">         
                
                    	<p class="parrafo">'.$sesionwiki['DESCRIPCION_HCMAD'].'</p>';

                    							session_start();
						                
			                	if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {

						                		echo'
      							
									<div style="color:#FF0000;">
										<form action="index"  method="post" name="form" id="modificar">
											<input type="text" name="idmodificar_hcm_descripcion" value="'.$sesionwiki['ID_HCMAD'].'" hidden>
											<button class="botones" type="submit" data-toggle="tooltip" data-placement="top" title="Editar" value="Modificar" >[ <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> ]																							
											</button>
										</form>

										<form action="index"  method="post" name="form" id="eliminar">
											<input type="text" name="ideliminar_hcm_descripcion" value="'.$sesionwiki['ID_HCMAD'].'" hidden>
											<button class="botones" type="submit" data-toggle="tooltip" data-placement="top" title="Eliminar" value="Eliminar" >[ <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> ]													
											</button>
										</form>
									</div>	';

								}
									echo'							
						</div>';
					}
			}
	
		}
		echo '<div class="col-lg-12" align="center">  <strong>Página:</strong> '.$seleccionar->fetchNavegacion().'</div>';
	}






	function Obtener_Registrar_Multimedia($titulo_,$valor_,$imagen_){

		$this->titulo=$titulo_;
		$this->valor=$valor_;
		$this->imagen=$imagen_;

	}


	function Obtener_Modificar_Multimedia($id_,$imagen_){


			$this->id=$id_;
		$this->imagen=$imagen_;

	}


	function Registrar_Manual(){

		include('../../../../utilidad/php/Conexion.php');

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
					mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");		
	mysql_query("INSERT INTO hcm_manual (TITULO_HCMM,TIPO,DOCUMENTO,UCEDULA) VALUES ('$this->titulo','$this->valor','$this->imagen','$_SESSION[usercedula]')",$con);


	}


	function Modificar_Manual(){
		include('../../../../utilidad/php/Conexion.php');

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("UPDATE hcm_manual set TITULO_HCMM = '$this->descripcion', TIPO = '$this->tipo', UCEDULA = '$_SESSION[usercedula]' WHERE ID_HCMM = '$this->id'",$con);

	}


		function Modificar_Manual_File(){

			include('../../../../utilidad/php/Conexion.php');

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

mysql_query("UPDATE hcm_manual set DOCUMENTO = '$this->imagen', UCEDULA = '$_SESSION[usercedula]' WHERE ID_HCMM = '$this->id'",$con);

		

	}


function Eliminar_Manual(){
		include('../../../../utilidad/php/Conexion.php');


			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("DELETE FROM hcm_manual WHERE ID_HCMM = '$this->id'",$con);

	}


	function Registrar_Tutorial(){

			include('../../../../utilidad/php/Conexion.php');

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
					mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");		
	mysql_query("INSERT INTO hcm_tutorial (TITULO_HCMTT,TIPO,VIDEO,UCEDULA) VALUES ('$this->titulo','$this->valor','$this->imagen','$_SESSION[usercedula]')",$con);
		
	}

	function Modificar_Tutorial(){
		include('../../../../utilidad/php/Conexion.php');

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("UPDATE hcm_tutorial set TITULO_HCMTT = '$this->descripcion', TIPO = '$this->tipo', UCEDULA = '$_SESSION[usercedula]' WHERE ID_HCMTT = '$this->id'",$con);
	}


		function Modificar_Tutorial_File(){
		include('../../../../utilidad/php/Conexion.php');

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("UPDATE hcm_tutorial set VIDEO = '$this->imagen', UCEDULA = '$_SESSION[usercedula]' WHERE ID_HCMTT = '$this->id'",$con);
	}


	function Eliminar_Tutorial(){
		include('../../../../utilidad/php/Conexion.php');


			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("DELETE FROM hcm_tutorial WHERE ID_HCMTT = '$this->id'",$con);
	}



	function Mostrar_Manual_Titu(){

		include('../../utilidad/php/Conexion.php');
		
			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

				$seleccionar = mysql_query("SELECT * FROM hcm_manual",$con);					
				while($sesion = mysql_fetch_array($seleccionar)){

					if ($sesion['TIPO'] != "privado" || $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {
						echo '
						<div >
							<ul class="menu">
							<li class="letra_efecto"><a href="#"> '.$sesion['TITULO_HCMM'].'</a></li>
							</u>
						</div>
						';
					}
				}
	}

	function Mostrar_Manual(){

			include('../../utilidad/php/Conexion.php');
		
			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

				$seleccionar = mysql_query("SELECT * FROM hcm_manual",$con);					
				while($sesion = mysql_fetch_array($seleccionar)){

					if ($sesion['TIPO'] != "privado" || $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {

						echo '<div class="col-md-6" align="center">';
						
						$extension = pathinfo($sesion['DOCUMENTO']);
						echo '<p hidden>'.$extension["extension"].'</p>';

						if($extension['extension'] == "pdf"){
							echo '<img class="logo_pdf" src="../../utilidad/img/pdf.png">';
						}elseif($extension['extension'] == "docx"){
							echo '<img class="logo_pdf" src="../../utilidad/img/docx.png">';
						}elseif($extension['extension'] == "odt"){
							echo '<img class="logo_pdf" src="../../utilidad/img/odt.png">';
						}

						echo'
									<a href="utilidad/manual/'.$sesion['DOCUMENTO'].'" target="_blank"><h3 title="Tipo de contenido: '.$sesion['TIPO'].'" ><span class="glyphicon glyphicon-download-alt btn-lg" aria-hidden="true"></span>'.$sesion['TITULO_HCMM'].'</h3>	</a>
										
										<!-- Botonera Editar, eliminar -->';

															session_start();
						                
				                	if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {

						                		echo'

										<form action="manual"  method="post" name="form" id="modificar">
											<input type="text" name="idmodificarmanu" value="'.$sesion['ID_HCMM'].'" hidden>
											<button class="botones wobble-bottom" type="submit" data-toggle="tooltip" data-placement="top" title="Editar" value="Modificar"> [ <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> ] </button>
										</form>

										<form action="manual"  method="post" name="form" id="eliminar">
											<input type="text" name="ideliminarmanu" value="'.$sesion['ID_HCMM'].'" hidden>
											<button class="botones wobble-bottom" type="submit" data-toggle="tooltip" data-placement="top" title="Eliminar" value="Eliminar" > [ <span class="glyphicon glyphicon-remove aria-hidden="true"></span> ]								
											</button>
										</form>';
									}
										echo'																
						</div>';
					}
		}



	}

	function Mostrar_Tutorial_Titu(){

		include('../../utilidad/php/Conexion.php');
		
			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

				$seleccionar = mysql_query("SELECT * FROM hcm_tutorial",$con);					
				while($sesion = mysql_fetch_array($seleccionar)){

					if ($sesion['TIPO'] != "privado" || $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {
					echo '
						<div >
							<ul class="menu">
							<li class="letra_efecto"><a href="#"> '.$sesion['TITULO_HCMTT'].'</a></li>
							</u>
						</div>';
					}
				}
	}

	function Mostrar_Tutoriales(){

	include('../../utilidad/php/Conexion.php');
		
			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

				$seleccionar = mysql_query("SELECT * FROM hcm_tutorial",$con);					
				while($sesion = mysql_fetch_array($seleccionar)){

					if ($sesion['TIPO'] != "privado" || $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {
						echo '
						<div class="col-md-12" align="center">
									
									
									<video width="700px" src="utilidad/tutorial/'.$sesion['VIDEO'].'" controls></video>					

									<h3 title="Tipo de contenido: '.$sesion['TIPO'].'" >'.$sesion['TITULO_HCMTT'].'</h3>	
										
										<!-- Botonera Editar, eliminar -->';

															session_start();
						                
				                	if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager Recursos Humanos" || $_SESSION['userrol'] == "Usuario HCM") {

						                		echo'

										<form action="manual"  method="post" name="form" id="modificar">
											<input type="text" name="idmodificartuto" value="'.$sesion['ID_HCMTT'].'" hidden>
											<button class="botones wobble-bottom" type="submit" data-toggle="tooltip" data-placement="top" title="Editar" value="Modificar"> [ <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> ] </button>
										</form>

										<form action="manual"  method="post" name="form" id="eliminar">
											<input type="text" name="ideliminartuto" value="'.$sesion['ID_HCMTT'].'" hidden>
											<button class="botones wobble-bottom" type="submit" data-toggle="tooltip" data-placement="top" title="Eliminar" value="Eliminar" > [ <span class="glyphicon glyphicon-remove aria-hidden="true"></span> ]								
											</button>
										</form>	';
									}
										echo'															
						</div>';
					}
				}	
	

	}


}



?>