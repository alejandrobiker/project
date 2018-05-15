<?php

    include('../../utilidad/php/Conexion.php');    

    if(isset($_POST['registrar_contenido_hcm']) && !empty($_POST['registrar_contenido_hcm'])){
			
	    echo '	

      <body onload="Reloj()">			

      <!-- MOdal -->

        <div class="modal fade" id="modificars">
          <div class="modal-dialog">
            <div class="modal-content">
              <header>
              <div class="modal-header">
                    <a href="index" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
                    <img width="100px" src="../../utilidad/img/add.png"/>             
              </div>
              </header>

              <!--contenido de la ventana-->
              <div class="modal-body">       

                <form action="javascript:hcm_contenido();" name="frm_hcm_contenido" id="hcm_contenido" enctype="multipart/form-data">


                    <div class="form-group">
                      <div class="input-group">
                        <span class="input-group-addon">Contenido</span>
                        <textarea name="contenido_hcm" class="form-control" cols="60" rows="4" required onkeypress="return solomayuscula(event,this)"></textarea>
                      </div>
                    </div>

                <div class="alert alert-success" role="alert" id="mos_hcm_contenido" hidden> </div>  

              </div>
              <!--FIN contenido de la ventana-->

              <!-- Footer de la ventana -->
                <div class="modal-footer"> 
                  <input type="text" name="id_hcm" value="'.$_POST['registrar_contenido_hcm'].'" hidden>                  
                  <input class="btn btn-success" name="publicar" value="Publicar" type="submit" id="publicarnoticia">
                  <a class="btn btn-close" href="index">Cerrar</a>

                  </form>
                </div>
              <!-- FIN Footer de la ventana -->
          </div> <!--FIN modal-content-->
        </div><!--FIN modal-dialog-->
      </div><!-- FIn modal-->

      </body>';		
		}	//Fin-si
?>