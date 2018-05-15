

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
				                        <li><a href="../utilidad/php/Cerrar"><span class="glyphicon glyphicon-off"></span> Cerrar Sesión</a></li>
			                      	</ul>

			 							';            				 						
				 					}
         				 ?>
     				           		 
                </div>  
	          			
			</div>