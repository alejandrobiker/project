<?php

ini_set('display_errors', 0); // no muestra los errores
include("../Suscerte.php");

class Usuarios extends Suscerte
{

	protected $id;
	protected $nombres;
	protected $apellidos;
	protected $cedula;
	protected $clave;
	protected $rclave;
	protected $rol;
	protected $email;


	function Usuarios($nombres_,$apellidos_,$cedula_,$clave_,$rol_,$email_){		

		$this->nombres=$nombres_;	
		$this->apellidos=$apellidos_;	
		$this->cedula=$cedula_;	
		$this->clave=$clave_;	
		$this->rol=$rol_;	
		$this->email=$email_;	

	}

	function Conectar(){
	}
	
	function ObtenerM($id_,$nombres_,$apellidos_,$cedula_,$clave_,$email_){		

		$this->id=$id_;
		$this->nombres=$nombres_;
		$this->apellidos=$apellidos_;
		$this->cedula=$cedula_;
		$this->clave=$clave_;
		$this->email=$email_;
	}	

	
	function ObtenerE($id_){
		$this->id=$id_;
	}

	function Registrar_Titulo(){
		
		
	 	include('../Conexion.php');

		 	$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
	
	      	mysql_query("INSERT INTO usuarios_wiki (NOMBRES,APELLIDOS,CEDULA,CLAVE,ROL,EMAIL,UCEDULA) VALUES ('$this->nombres','$this->apellidos','$this->cedula','$this->clave','$this->rol','$this->email','$_SESSION[usercedula]')",$con);
		
	}

	function Registrar_Descripcion(){

	}

	function Modificar_Titulo(){
		include('../Conexion.php');

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
			
		mysql_query("UPDATE usuarios_wiki set NOMBRES = '$this->nombres', APELLIDOS = '$this->apellidos', CEDULA = '$this->cedula', CLAVE = '$this->clave', EMAIL = '$this->email', UCEDULA = '$_SESSION[usercedula]' WHERE ID_USUARIO = '$this->id'",$con);
	}

	function Modificar_Descripcion (){

	}

	function Eliminar_Titulo(){

	}

	function Eliminar_Descripcion(){
		
		include('../Conexion.php');

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

			mysql_query("DELETE FROM usuarios_wiki WHERE ID_USUARIO = '$this->id'",$con);
	}

	function Mostrar_Titulos(){

		
	}
	
	function Mostrar(){

	
			include("utilidad/php/Conexion.php");              	 

				echo'
					<table class="table table-striped table-bordered table-hover table-condensed"> 

						<tr>
							<th hidden>ID</th>				
							<th>Nombres</th>
							<th>Apellidos</th>
							<th>Cedula</th>
							<th>Rol</th>
							<th>E-Mail</th>	
							<th colspan="2"></th>							
						</tr>
				';

				$con = mysql_connect($host,$user,$pw)or die("problemas al conectar");
					mysql_select_db($db,$con)or die("Problemas al conectar");
							

				$selecusuario = mysql_query("SELECT * FROM usuarios_wiki WHERE ROL LIKE 'Administrador Vencert' ORDER BY CEDULA ASC",$con);

				while($sesionusuario = mysql_fetch_array($selecusuario)){

					echo '<tr>

					<td hidden>'.$sesionusuario['ID_USUARIO'].'</td>
					<td>'.$sesionusuario['NOMBRES'].'</td>
					<td>'.$sesionusuario['APELLIDOS'].'</td>
					<td>'.$sesionusuario['CEDULA'].'</td>
					<td>'.$sesionusuario['ROL'].'</td>
					<td>'.$sesionusuario['EMAIL'].'</td>
					<td>
					<form action="Usuarios" method="post" name="form" id="modificar">
						<input type="text" name="idmodificar_usuario" value="'.$sesionusuario['ID_USUARIO'].'"  hidden>
						<button class="botones" type="submit" data-toggle="tooltip" data-placement="top" title="Editar" value="Modificar">  <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>  </button>
					</form>
					</td>
					<td>';
					if ($_SESSION['usercedula'] != null && $sesionusuario['ROL'] == "Administrador"){
						echo'
						<button class="botones" type="submit" data-toggle="tooltip" data-placement="top" title="El administrador no se puede eliminar" value="Eliminar" disabled>  <span class="glyphicon glyphicon-ban-circle aria-hidden="true"></span> 							
						';
					}else{
					echo'
					<form action="Usuarios" method="post" name="form" id="eliminar">
						<input type="text" name="ideliminar_usuario" value="'.$sesionusuario['ID_USUARIO'].'" hidden>
						<button class="botones" type="submit" data-toggle="tooltip" data-placement="top" title="Eliminar" value="Eliminar" >  <span class="glyphicon glyphicon-remove aria-hidden="true"></span> 										
						</button>
					</form>
					</td>					
					</tr>

					';
				}
			}
		
			echo'</table>';

	}


	function Obtener_Registrar_Multimedia(){


	}


	function Obtener_Modificar_Multimedia(){


	}


	function Registrar_Manual(){



	}

	function Modificar_Manual(){

	}


	function Modificar_Manual_File(){

	}


	function Eliminar_Manual(){

	}


	function Registrar_Tutorial(){


		
	}

	function Modificar_Tutorial(){
	}


	function Modificar_Tutorial_File(){
	}


	function Eliminar_Tutorial(){

	}



	function Mostrar_Manual_Titu(){


	}

	function Mostrar_Manual(){


	}

	function Mostrar_Tutorial_Titu(){

	}


	function Mostrar_Tutoriales(){


	}




}
?>