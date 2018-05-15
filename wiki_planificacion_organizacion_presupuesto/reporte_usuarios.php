<?php 

  require_once("../dompdf/dompdf_config.inc.php");
  ini_set('display_errors', 0); // no muestra los errores

include("../utilidad/php/Conexion.php");
  $con = mysql_connect($host,$user,$pw)or die("problemas al conectar");
  mysql_select_db($db,$con)or die("Problemas al conectar");

$codigoHTML='
<!DOCTYPE html>
<html lang="es">

<body>
  <div>
    <img style="position:relative; left: 0px;" width="100%" height="60px" src="../utilidad/img/banner_report.png">
    <p align="center" style="margin-top:-20px; font-size:22px; color:#333333";">Wiki <img style="margin-top:43px;" width="90px" height="57px" src="../utilidad/img/suscerte.png"> </p> 
  </div>

    <div border="1" align="center" style="font-size:20px; font-family:Open Sans;">Usuarios Planificación, Organización y Presupuesto</div><br>

    <table width="95%" border="1" style="padding:2px;">
      <tr>
        <td style="background-color:#D5D5D5;"><strong>Nombre</strong></td>
        <td style="background-color:#D5D5D5;"><strong>Apellido</strong></td>
        <td style="background-color:#D5D5D5;"><strong>Cedula</strong></td>
        <td style="background-color:#D5D5D5;"><strong>Rol</strong></td>
        <td style="background-color:#D5D5D5;"><strong>correo</strong></td>
      </tr>';
        $consulta=mysql_query("SELECT * FROM usuarios_wiki WHERE ROL LIKE 'Usuario Organizacion' OR ROL LIKE 'Usuario Planificacion' OR ROL LIKE 'Usuario Presupuesto' ORDER BY CEDULA asc",$con);
        while($dato=mysql_fetch_array($consulta)){
$codigoHTML.='
      <tr>
        <td>'.$dato['NOMBRES'].'</td>
        <td>'.$dato['APELLIDOS'].'</td>
        <td>'.$dato['CEDULA'].'</td>
        <td>'.$dato['ROL'].'</td>
        <td>'.$dato['EMAIL'].'</td>
      </tr>';
      } 
$codigoHTML.='
    </table>
</div>


<footer style="position:absolute; bottom:0px; margin-left:230px;"> Wiki Informativa SUSCERTE - Caracas | Venezuela</footer>

</body>
</html>';

  // echo $codigoHTML;

$codigoHTML=utf8_decode($codigoHTML);
$dompdf=new DOMPDF();
$dompdf->load_html($codigoHTML);
ini_set("memory_limit","128M");
$dompdf->render();
$dompdf->stream("Wiki_usuarios_pop.pdf");


?>