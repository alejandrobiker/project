<?php 
	require_once("../../dompdf/dompdf_config.inc.php");
  ini_set('display_errors', 0); // no muestra los errores

    include("../../utilidad/php/Suscerte.php");
            include("../utilidad/php/Vencert.php");
            include("utilidad/php/Gestion_Incidente.php");


$codigoHTML='<!DOCTYPE html>
<html lang="es">

    <head>';
  
        require_once'estructura/head.php';
          

    $codigoHTML.='
    </head>   

    <body onload="Reloj()">  
    


    <header>';
              require_once'estructura/header.php';
        
    $codigoHTML.= '
    </header>

      <div class="container-fluid">
          
      <!-- CONTENIDO DE LA PAGINA DIVIDIDA EN 2 COLUMNAS, UNA DE 2 Y OTRA DE 10 -->
      <div class="row">
        <!-- Menu de Navegación principal -->
        <div class="col-md-2">
          
        
       

        </div>
        <!-- Fin del menu -->

        <!-- Logo de Vencer -->
        <div class="col-md-10" align="center">
          <h2 class="unidad">Gestion de Incidentes</h2>
          <!-- <a href="vencert.php"><img class="logo_vencert" src="utilidad/img/logo_vencert.png"></a> --> 
        </div>
        <!-- Fin del logo -->

            
            <div class="row">'; 
            
              
                $obj = new Gestion_Incidente();
                            $obj->Mostrar();

            
         
              
            $codigoHTML.='</div> 
              

          </div> <!-- Fin del thumbnail-->  
        </div> <!-- Fin-Contenido del link 10 columnas -->
      </div> <!-- Fin del Row -->

      </div> <!-- Fin del container-fluid --><br><br><br><br> '; 
     
          require_once'estructura/footer.php';
         

    $codigoHTML.='</body>
</html>
';


//echo $codigoHTML;



$codigoHTML=utf8_decode($codigoHTML);
$dompdf=new DOMPDF();
$dompdf->load_html($codigoHTML);
ini_set("memory_limit","128M");
$dompdf->render();
$dompdf->stream("Gestiondeincidente.pdf");


?>