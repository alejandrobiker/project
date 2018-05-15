			<div class="modal fade" id="modalEliminar">
				<div class="modal-dialog">
					<div class="container">
						<div class="row">
		        			<div class="col-md-8 col-md-offset-2">
		            			<div class="panel panel-default">

 								<header>
									<div class="modal-header">
										<a href="Usuarios" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="../utilidad/img/eliminarusuario.png"/> 
									</div>
								</header>

							 	<!--contenido de la ventana-->

								<div class="modal-body">
										

									<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
										¿Esta seguro que desea eliminar este Usuario?
									</div>

					
									<div class="alert alert-danger" role="alert" id="eliminado" hidden></div>
								</div>
																
								<!-- Footer de la ventana -->

								<div class="modal-footer">	
									
									<form action="javascript:eliminar_usuario();" name="frm_eliminar_usuario">									

										<input id="eid_usuario" type="text" name="ideliminar_usuario" hidden>
										<input id="rol_usu" type="text" name="rol_usu" hidden>
										<input class="btn btn-danger pulse-grow" type="submit" id="elimi_boton" value="Aceptar" data-toggle="tooltip" data-placement="top" title="Eliminar">
										<a class="btn btn-default curl-top-right" href="Usuarios" data-toggle="tooltip" data-placement="top" title="Regresar" value="Regresar">Cerrar</a>

									</form>							
								</div> <!-- Fin div Footer -->

								</div> <!-- Fin panel-->
							</div> <!-- Fin col-->
						</div> <!-- Fin row-->
					</div> <!-- Fin modal-content -->
				</div> <!-- Fin modal-dialog-->
			</div> <!-- Fin  modal-fade -->
						