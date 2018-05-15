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

    <div border="1" align="center" style="font-size:20px; font-family:Open Sans;">Bitácora VenCERT</div><br>

    <table width="95%" border="1" style="padding:2px;">
      <tr>
        <td style="background-color:#D5D5D5;"><strong>ID_Bitácora</strong></td>
        <td style="background-color:#D5D5D5;"><strong>Cédula</strong></td>
        <td style="background-color:#D5D5D5;"><strong>IP</strong></td>
        <td style="background-color:#D5D5D5;"><strong>Fecha Y Hora</strong></td>
        <td style="background-color:#D5D5D5;"><strong>Acción</strong></td>
        <td style="background-color:#D5D5D5;"><strong>Tabla</strong></td>
      </tr>';

        $consulta=mysql_query("SELECT * FROM bitacora WHERE TABLA LIKE 'gestion_incidente_articulo_t' OR TABLA LIKE 'gestion_incidente_articulo_d' OR TABLA LIKE 'gestion_incidente_manual' OR TABLA LIKE 'gestion_incidente_tutorial' OR TABLA LIKE 'seguridad_logica_articulo_d' OR TABLA LIKE 'seguridad_logica_articulo_t' OR TABLA LIKE 'seguridad_logica_manual' OR TABLA LIKE 'seguridad_logica_tutorial' OR TABLA LIKE 'oam_articulo_d' OR TABLA LIKE 'oam_articulo_t' OR TABLA LIKE 'oam_manual' OR TABLA LIKE 'oam_tutorial' ORDER BY ID_BITACORA asc",$con);
        while($dato=mysql_fetch_array($consulta)){
$codigoHTML.='
      <tr>
        <td>'.$dato['ID_BITACORA'].'</td>
        <td>'.$dato['UCEDULA'].'</td>
        <td>'.$dato['HOST'].'</td>
        <td>'.$dato['FECHA'].'</td>
        <td>'.$dato['ACCION'].'</td>
        <td>'.$dato['TABLA'].'</td>
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
$dompdf->stream("Wiki_bitacora_VenCERT.pdf");


?>