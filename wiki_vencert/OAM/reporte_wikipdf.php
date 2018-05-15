<?php 
  require_once("../../dompdf/dompdf_config.inc.php");
  ini_set('display_errors', 0); // no muestra los errores
  include("../../utilidad/php/Conexion.php");
  $con = mysql_connect($host,$user,$pw)or die("problemas al conectar");
                  mysql_select_db($db,$con)or die("Problemas al conectar");

$codigoHTML='
<!DOCTYPE html>
<html lang="en">

<body>
    <div>
    <img style="position:relative; left: 0px;" width="100%" height="60px" src="../../utilidad/img/banner_report.png">
        <p align="center" style="margin-top:-20px; font-size:22px; color:#333333";">Wiki <img style="margin-top:43px;" width="90px" height="57px" src="../../utilidad/img/suscerte.png"> </p>  
  </div>   


   <img style="margin-top:-20px;" width="100%" src="../../utilidad/img/articulo.png">

  
        ';

      $seleccionartitu = mysql_query("SELECT * FROM oam_articulo_t ",$con);

      while($sesiontitu = mysql_fetch_array($seleccionartitu)){
           
      $codigoHTML.='<h3>';  $codigoHTML.= $sesiontitu['TITULO_OAMT'];  $codigoHTML.='</h3>';

      

      $seleccionardesc = mysql_query("SELECT * FROM oam_articulo_d WHERE '$sesiontitu[ID_OAMT]' = ID_TITULO_OAMT",$con);

      while($sesiondesc = mysql_fetch_array($seleccionardesc)){
           
      $codigoHTML.= $sesiondesc['DESCRIPCION_OAMD'];
      



        }
      } 
    

$codigoHTML.='
    </div>';

$codigoHTML.='
<footer style="position:absolute; bottom:0px; margin-left:230px;"> Wiki Informativa SUSCERTE - Caracas | Venezuela</footer>

</body>
</html>';

// echo $codigoHTML;

// /*
$codigoHTML=utf8_decode($codigoHTML);
$dompdf=new DOMPDF();
$dompdf->load_html($codigoHTML);
ini_set("memory_limit","128M");
$dompdf->render();
$dompdf->stream("Wiki_OAM.pdf");

?>