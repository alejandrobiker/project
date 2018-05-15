<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

	<!-- Modal de Vencert, Agregar Articulo nuevo -->
	    <div class="modal fade" id="Vencert_articulo">
	        <div class="modal-dialog">
	          	<div class="modal-content">
		            <header>
			            <div class="modal-header">
			           		<a href="index" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
							<img class="logo-modal" src="../../utilidad/img/logo_vencert.png"/>
							<br>
			            </div>
		            </header>

		            <!--contenido de la ventana-->
		            <div class="modal-body">       

	     				<form action="javascript:el_registrar();" name="frm_el_registrar" enctype="multipart/form-data" id="uaf_el_registrar">
		                        		                      
			                <div class="form-group">
		                        <div class="input-group">
		                        	<span class="input-group-addon">Título</span>
		                        	<input type="text" name="el_titulo" class="form-control" required onkeypress="return solomayuscula(event,this)">

                        			<span class="input-group-addon">Tipo de Contenido</span>
								 	<select name="el_tipo" class="form-control" required/>
										<option value="publico">Público</option>
										<option value="privado">Privado</option>
									</select>
		                        </div>
			                </div>

			                <div class="form-group">
			                    <div class="input-group">
			                        <span class="input-group-addon">Contenido</span>
			                        <textarea name="el_descripcion" class="form-control" cols="60" rows="4" required onkeypress="return solomayuscula(event,this)"></textarea>
								</div>
		                    </div>
			                    <div class="alert alert-success" role="alert" id="mos_el" hidden></div>	          
			            	

			            	<!-- Footer de la ventana -->
			            	<div class="modal-footer"> 
			                	<input class="btn btn-success pulse-grow" name="publicar" value="Publicar" type="submit" id="">
			                	<a class="btn btn-default curl-top-right" href="index">Cerrar</a>
			                </div>
	            		</form>	
            		</div>                
	            </div><!-- Fin del modal-body -->	              
            </div>
        </div>	
	<!-- Fin MOdal Registrar contenido nuevo -->

	<!-- Ckeditor para el modal descripcion -->
	<script type="text/javascript">
		 //window.onload = function (){
		editorwiki = CKEDITOR.replace("el_descripcion");
		CKFinder.setupCKEditor(editorwiki, 'http://localhost/wiki/wiki_cenif/electronica/index.php')
		 //}
	</script>
		
	<!-- Fin del modal para Vencert - Articulo -->

	<!--/////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////-->

	<!-- Modal de Vencert, Agregar Manual nuevo -->
	    <div class="modal fade" id="Vencert_manual">
	        <div class="modal-dialog">
	          	<div class="modal-content">
		            <header>
			            <div class="modal-header">
			           		<a href="manual" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
							<img class="logo-modal" src="../../utilidad/img/logo_vencert.png"/>
							<br>
			            </div>
		            </header>

		            <!--contenido de la ventana-->
		            <div class="modal-body">       

	     				<form action="javascript:el_manual();" name="frm_rwiki" enctype="multipart/form-data" id="el_manual">
		                        		                      
			                <div class="form-group">
		                        <div class="input-group">
		                        	<span class="input-group-addon">Título</span>
		                        	<input type="text" name="el_manual_titulo" class="form-control" required onkeypress="return solomayuscula(event,this)">

		                        	<span class="input-group-addon">Tipo de Contenido</span>
								 	<select name="el_manual_tipo" class="form-control" required/>
										<option value="publico">Público</option>
										<option value="privado">Privado</option>
									</select>
		                        </div>
			                </div>

			                <div class="form-group">
			                    <div class="mostrar">
			                     	<img src="../../utilidad/img/Agregarpdf.png" class="agarrarimagen" text-align="center" width='130' height='110'>
		                    	</div>

			                	<div id="agarrarimagen">
		                    		<input name="file_el_manual" class="file" type="file" id="files" accept="image/docx" multiple required  onchange="return documentos(this)"/>
	                 			</div>

								<!--alertas-->
								<div class="alert alert-info" role="alert" align="center">Formatos permitidos: PDF - ODT - DOCX<br>Tamaño máximo de archivo: 15 MB</div>
		                 		<div class="alert alert-danger" id="file_novalido" hidden></div>
				                <div class="alert alert-info" id="file_valido" hidden></div>
			                    <div class="alert alert-success" role="alert" id="res" hidden></div>		                  

				            </div>
		                    
			            	<!-- Footer de la ventana -->
			            	<div class="modal-footer"> 
			                	<input class="btn btn-success pulse-grow" name="publicar" value="Publicar" type="submit" id="">
			                	<a class="btn btn-default curl-top-right" href="manual">Cerrar</a>
			                </div>
	            		</form>	
            		</div>                
	            </div><!-- Fin del modal-body -->	              
            </div>
        </div>		
		
	<!-- Fin del modal de Vencert - Manual -->

	<!--/////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////-->

	<!-- Modal de Vencert, Agregar Tutorial nuevo -->

	    <div class="modal fade" id="Vencert_tutorial">
	        <div class="modal-dialog">
	          	<div class="modal-content">
		            <header>
			            <div class="modal-header">
			           		<a href="tutoriales" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
							<img class="logo-modal" src="../../utilidad/img/logo_vencert.png"/>
							<br>
			            </div>
		            </header>

		            <!--contenido de la ventana-->
		            <div class="modal-body">       

	     				<form action="javascript:el_tutorial();" name="frm_rwiki" enctype="multipart/form-data" id="el_tutoriales">
		                        		                      
			                <div class="form-group">
		                        <div class="input-group">
		                        	<span class="input-group-addon">Título</span>
		                        	<input type="text" name="el_tutorial_titulo" class="form-control" required onkeypress="return solomayuscula(event,this)">

		                        	<span class="input-group-addon">Tipo de Contenido</span>
								 	<select name="el_tutorial_tipo" class="form-control" required/>
										<option value="publico">Público</option>
										<option value="privado">Privado</option>
									</select>
		                        </div>
			                </div>

			                <div class="form-group">
			                   	<div class="mostrar">
	                     			<img src="../../utilidad/img/Agregarvideo.png" class="agarrarimagen" text-align="center" width='130' height='110'>
	                			</div>

		                		<div id="agarrarimagen">
	                    			<input name="file_el_tutorial" class="file" type="file" id="filestuto" accept="video/mp4" multiple required  onchange="return videos(this)"/>
	                 		 	</div>
								
								<!-- alertas -->
								<div class="alert alert-info" role="alert" align="center">Formatos permitidos: MP4 - WEBM<br> Tamaño máximo de video: 40 MB</div>
	             				<div class="alert alert-danger" id="file_novalido_tutorial" hidden></div>
	               				<div class="alert alert-info" id="file_valido_tutorial" hidden></div>
	                			<div class="alert alert-success" role="alert" id="res_el_tutoriales" hidden></div>	                  

				            </div>
		                    
			            	<!-- Footer de la ventana -->
			            	<div class="modal-footer"> 
			                	<input class="btn btn-success pulse-grow" name="publicar" value="Publicar" type="submit" id="">
			                	<a class="btn btn-default curl-top-right" href="tutoriales">Cerrar</a>
			                </div>
	            		</form>	
            		</div>                
	            </div><!-- Fin del modal-body -->	              
            </div>
        </div>		
		
	<!-- Fin del modal de Vencert - Tutorial -->