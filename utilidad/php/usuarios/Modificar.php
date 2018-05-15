<?php
session_start();
include("../Conexion.php");
include("Usuarios.php");

if(isset($_POST['nombres']) && !empty ($_POST['nombres']) &&
	isset($_POST['apellidos']) && !empty ($_POST['apellidos']) &&
	isset($_POST['cedula']) && !empty ($_POST['cedula']) &&
	isset($_POST['clave']) && !empty ($_POST['clave']) &&
	isset($_POST['rclave']) && !empty ($_POST['rclave']) &&
	isset($_POST['email']) && !empty ($_POST['email'])&&
	isset($_POST['idmodificar_usuario']) && !empty ($_POST['idmodificar_usuario'])){

		$id = $_POST['idmodificar_usuario'];
		$nombres = $_POST['nombres'];
		$apellidos = $_POST['apellidos'];
		$cedula = $_POST['cedula'];
		$clave = $_POST['clave'];
		$rclave = $_POST['rclave'];
		$email = $_POST['email'];	
	
			include('../Conexion.php');
			include('../ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar Usuario','usuarios_wiki')",$con);

		if ($clave == $rclave) {
					
			$obj = new Usuarios();
			$obj->ObtenerM($id,$nombres,$apellidos,$cedula,$clave,$email);
			$obj->Modificar_Titulo();

				echo "Usuario editado correctamente.";
				
		}else{
			 echo "<p style='color:red'> Las claves no son iguales, por favor corrija.</p>";
		}

	}elseif(isset($_POST['clave']) && !empty ($_POST['clave']) &&
	isset($_POST['viejaclave']) && !empty ($_POST['viejaclave']) && 
	isset($_POST['rclave']) && !empty ($_POST['rclave']) && 
	
	($_POST['clave'] == $_POST['rclave'])){

	$con = mysql_connect($host,$user,$pw)or die("problemas al conectar");
	mysql_select_db($db,$con)or die("Problemas al conectar");

	$selusucla = mysql_query("SELECT * FROM usuarios_wiki WHERE CEDULA = '$_SESSION[usercedula]' AND CLAVE = '$_POST[viejaclave]'",$con);

		 if($sesionclave = mysql_fetch_array($selusucla)){

			$modificlave = mysql_query("UPDATE usuarios_wiki set CLAVE = '$_POST[clave]' WHERE CEDULA = '$_SESSION[usercedula]' ",$con);

			echo "Contraseña Modificada!";

		}else{

			echo "La clave vieja no coincide.";				

		}

	}elseif($_POST['clave'] != $_POST['rclave']){

		echo "Las claves deben ser iguales. ";
			


		

}

?>