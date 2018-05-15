			<div class="modal fade" id="modalEditar">
				<div class="modal-dialog">
					<div class="container">
						<div class="row">
		        			<div class="col-md-8 col-md-offset-2">
		            			<div class="panel panel-default">
		            			<!--Header de la ventana -->

								<div class="modal-header">
										<a href="Usuarios" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="utilidad/img/modificarusuario.png"/>
								</div>

							 	<!--contenido de la ventana-->

								<div class="modal-body">

									<form action="javascript:modificar_usuario();" name="frm_modificar_usuario" enctype="multipart/form-data" id="subida"  onsubmit="return validar_editar();">

										

										<div class="form-group">
											<div class="input-group">
			  	 								<span class="input-group-addon">Nombres</span>
												<input id="nombres" type="text" name="nombres" class="form-control" required onkeypress="return solomayuscula(event,this)" autofocus>
											</div>
										</div>
										
										<div class="form-group">
											<div class="input-group">
			  	 								<span class="input-group-addon">Apellidos</span>
												<input id="apellidos" type="text" name="apellidos" class="form-control" required required onkeypress="return solomayuscula(event,this)">
											</div>
										</div>
										<div class="form-group">
					                        <div class="input-group">
					                        	<span class="input-group-addon">Cedula</span>
					                        	<input id="cedula" type="text" name="cedula" class="form-control" required onkeypress="return solonumeros(event,this)">
					                        </div>
						                </div>
           					    		<div class="form-group">
					                        <div class="input-group">
					                        	<span class="input-group-addon">Contraseña</span>
					                        	<input id="clave" type="password" name="clave" class="form-control" required>
					                        </div>
						                </div>

				                	     <div class="form-group">
					                        <div class="input-group">
					                        	<span class="input-group-addon">Repita la Contraseña</span>
					                        	<input id="rclave" type="password" name="rclave" class="form-control" required>
					                        </div>
						                </div>

				                	     <div class="form-group">
					                        <div class="input-group">
					                        	<span class="input-group-addon">Correo Electronico</span>
					                        	<input id="email" type="text" name="email" class="form-control" required onkeypress="return solo_email(event,this)">					                        	
					                        	<!-- <span class="input-group-addon">@SUSCERTE.GOB.VE</span> -->
					                        </div>
						                </div>	
										
											<div class="alert alert-info" role="alert" id="mos_usu" hidden> </div>
						
									</div>

									<!-- Footer de la ventana -->

									<div class="modal-footer">

										<input id="id_usuario" type="text" name="idmodificar_usuario" hidden>
										<input class="btn btn-primary pulse-grow" name="publicar" id="modi_usu" value="Editar" type="submit">
										<a class="btn btn-default curl-top-right" href="Usuarios" id="Regresarusuario" data-toggle="tooltip" data-placement="top" title="Regresar">Cerrar</a>
									</form>
								</div> <!-- Fin div Footer -->
								</div> <!-- Fin panel-->
							</div> <!-- Fin col-->
						</div> <!-- Fin row-->
					</div> <!-- Fin modal-content -->
				</div> <!-- Fin modal-dialog-->
			</div> <!-- Fin  modal-fade -->