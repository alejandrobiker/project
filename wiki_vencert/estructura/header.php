
<img class="banner" src="../utilidad/img/banner_new.png">
		

			<div class="col-md-4">							
			</div>
			<div class="col-md-4">
			</div>
			<div class="col-md-4" align="right">

                <div id="icons-menutop" class="btn-group">
     				 
         				 <?php 
         				 	session_start(); 
         				 		if ($_SESSION['usercedula'] == null) {
         				 		echo'
         				 			<a class="btn btn-primary sesion" href="../sesion"><span class="glyphicon glyphicon-user"></span> Iniciar Sesión</a>';
				 					}else{
				 					echo'<button class="btn btn-primary sesion dropdown-toggle" type="button" data-toggle="dropdown"> '.$_SESSION['usernombre'].' '.$_SESSION['userapellido'].'  '.'</button>

			                      	<ul class="dropdown-menu dropdown-menu-right">
			                      		<li><a href=""><span class="glyphicon glyphicon-sunglasses"></span> Rol: '.$_SESSION['userrol'].'</a></li>
			                      		<li class="divider"></li>
				                      	<!--<li><a href="#ClaveUsuario" data-toggle="modal"><span class="glyphicon glyphicon-wrench"></span> Cambiar Clave</a></li> 
				                        <li class="divider"></li>-->
				                        <li><a href="../utilidad/php/Cerrar"><span class="glyphicon glyphicon-off"></span> Cerrar Sesión</a></li>
			                      	</ul>

			 							';            				 						
				 					}
         				 ?>
     				           		 
                </div>  
	          			
			</div>


        <!-- modal cambio de clave -->
        <div class="modal fade" id="ClaveUsuario">
          <div class="modal-dialog">
            <div class="container">
              <div class="row">
                <div class="col-md-8 col-md-offset-2">
                  <div class="panel panel-default">

                        <!--Header de la ventana -->
                        <header>
                          <div class="modal-header">
                            <a href="index" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
                            <img class="logo-modal" src="../utilidad/img/cambiodeclave.png"/>                             
                          </div>
                        </header>
                                
                        <!--contenido de la ventana-->

                        <div class="modal-body">
                          <form action="javascript:cambioclave();" name="frm_pass" id="subida">

                            <input type="text" name="fechan" size="10" hidden>                                 

                            <input type="text" name="fechal" size="15" hidden>                                  

                            <input type="text" name="reloj" size="10" hidden>
                            
                              <div class="form-group">
                                <div class="input-group">
                                  <span class="input-group-addon">Nueva Clave</span>
                                  <input type="password" name="clave" class="form-control" required>
                                </div>
                              </div>

                              <div class="form-group">
                                <div class="input-group">
                                  <span class="input-group-addon">Repetir Nueva Clave</span>
                                  <input type="password" name="rclave" class="form-control" required>
                                </div>
                              </div>

                              <div class="form-group">
                                <div class="input-group">
                                  <span class="input-group-addon">Clave Anterior</span>
                                  <input type="password" name="viejaclave" class="form-control" required>
                                </div>
                              </div>

                              <div class="alert alert-success" role="alert" id="responder" hidden></div>

                        </div>

                            <!-- Footer de la ventana -->
                            <div class="modal-footer">   

                              <button type="submit"  class="btn btn-primary pulse-grow" id="cambiarclave"> Cambiar Contraseña </button>
                              <a href="index" class="btn btn-default curl-top-right"> Cerrar </a>  

                            </div>
                          </form>
                  </div><!-- fin panel -->
                </div><!-- fin col -->
              </div><!-- fin row -->
            </div><!-- fin container -->
          </div><!-- fin dialog -->
        </div><!-- fin modal -->      