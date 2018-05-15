<!-- Modal de Vencert, Agregar Articulo nuevo -->
<div class="modal fade" id="Usuario" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      	<div class="container">
      		<div class="row">
        		<div class="col-md-8 col-md-offset-2">
            		<div class="panel panel-default">
		            	<header>
				            <div class="modal-header">
				           		<a href="Usuarios" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
								<img class="logo-modal" src="../utilidad/img/registrarusuario.png"/>
								<br>
				            </div>
			            </header>

			            <!--contenido de la ventana-->
			            <div class="modal-body">       
		     				<form action="javascript:usuario_registro();" method="post" name="frm_usuario_registro" enctype="multipart/form-data" id="usuario_registro" onsubmit="return validar();">
			                        		                      
				                <div class="form-group">
			                        <div class="input-group">
			                        	<span class="input-group-addon">Nombres</span>
			                        	<input type="text" name="nombres" class="form-control" placeholder="Nombres" required onkeypress="return solomayuscula(event,this)" autofocus>
			                        </div>
				                </div>                

				                <div class="form-group">
			                        <div class="input-group">
			                        	<span class="input-group-addon">Apellidos</span>
			                        	<input type="text" name="apellidos" class="form-control" placeholder="Apellidos" required onkeypress="return solomayuscula(event,this)">
			                        </div>
				                </div>  

       					 	    <div class="form-group">
			                        <div class="input-group">
			                        	<span class="input-group-addon">Cédula</span>
			                        	<input type="text" name="cedula" class="form-control" placeholder="Cédula" required onkeypress="return solonumeros(event,this)">
			                        </div>
				                </div>

		                        <div class="form-group">
                        			<div class="input-group">
                       				 	<span class="input-group-addon">Rol</span>
                     				 	<select style="height:40px" name="rol" class="form-control" required/>
                     				 		<option value="">Seleccione un Rol...</option>

                        					<option value="Usuario Administracion">Usuario Administración</option>
                        				</select>
                   				 	</div>
           					    </div>


		                	    <div class="form-group">
			                        <div class="input-group">
			                        	<span class="input-group-addon">Contraseña</span>
			                        	<input type="password" name="clave" class="form-control" placeholder="Contraseña" required>
			                        </div>
				                </div>

				                	     <div class="form-group">
			                        <div class="input-group">
			                        	<span class="input-group-addon">Repita la Contraseña</span>
			                        	<input type="password" name="rclave" class="form-control" placeholder="Repita la contraseña" required>
			                        </div>
				                </div>

		                	     <div class="form-group">
			                        <div class="input-group">
			                        	<span class="input-group-addon">Correo Electronico</span>
			                        	<input type="text" id="email" name="email" class="form-control" placeholder="ejemplo@suscerte.gob.ve">							
			                        	<!-- <span class="input-group-addon">@SUSCERTE.GOB.VE</span> -->
			                        </div>
				                </div>
				
						</div>
					
						<?php
						/*
						include("utilidad/php/Conexion.php");

						$con = mysql_connect($host,$user,$pw)or die("problemas al conectar");
							mysql_select_db($db,$con)or die("Problemas al conectar");
									

						$selecusuario = mysql_query("SELECT * FROM usuarios_wiki",$con);

						while($sesionusuario = mysql_fetch_array($selecusuario)){
							echo $sesionusuario['CEDULA'];echo'<br>';
						}*/
				        ?>  
						
				                <div class="alert alert-success" role="alert" id="mos_usuario" hidden></div>	          
				            	

				            	<!-- Footer de la ventana -->
				            	<div class="modal-footer"> 
				                	<input class="btn btn-success pulse-grow" name="publicar" value="Registrar" type="submit" id="">
				                	<a class="btn btn-default curl-top-right" href="Usuarios">Cerrar</a>
				                </div>
		            		</form>	
						</div>
					</div>
	        	</div>    		
    		</div>                
        </div><!-- Fin del modal-body -->	              
    </div>
</div>	
<!-- Fin MOdal Registrar contenido nuevo -->


<script>
function validateMail(idMail)
{
  //Creamos un objeto 
  object=document.getElementById(idMail);
  valueForm=object.value;
 
  // Patron para el correo
  var patron= /^[-\w.%+]{1,64}@(?:suscerte\.)(?:gob\.ve)$/i;
  if(valueForm.search(patron)==0)
  {
    //Mail correcto
    object.style.color="#000";
    return;
  }
  //Mail incorrecto
  object.style.color="#f00";
}</script>