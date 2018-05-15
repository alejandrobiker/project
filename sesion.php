<!DOCTYPE html>
<html lang="en">
  <head>
    <?php
	    require_once'estructura/head.php';
    ?>	
  </head>

  <body>

    <!--////////////////////// CONTENTENIDO DE LA PAGINA  /////////////////////-->
 
    <div id="login-page">
	  	
    	<form action="javascript:sesion();" method="post" name="formularioSesion" class="form-login">
          	<h2 class="form-login-heading">Iniciar Sesión</h2>
    	  		<div class="login-wrap">
			    	<input class="form-control curva" placeholder="Cedula" name="cedula" type="text" onkeypress="return solonumeros(event,this)" required autofocus>
	    			<br>
	    			<input class="form-control curva" placeholder="Contraseña" name="clave" type="password" value="" required>

		    		<label class="checkbox">
	                
	            	</label>			    	    
	    			<div align="right">
			    		<button class="btn btn-primary fondo pulse-grow" type="submit">Ingresar</button>
			    		<a class="btn btn-default fondo curl-top-right" href="index">Atras</a>				    					   
		    		</div> 	<br>		
		    		<div id="ver"></div>
	    		</div>
		</form>  
			
	  		
	</div>    

    <!--BACKSTRETCH-->
    <script type="text/javascript" src="utilidad/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("utilidad/img/login-wiki.png", {speed: 800});
    </script>

  </body>
</html>
