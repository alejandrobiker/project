<section class="menu">
	<div class="list-group">					
		<!-- <div class="list-group-item"> -->
		<div class="flip3D" align="center">
			<div class="back">
				<img class="logo_wiki" src="../utilidad/img/wiki.png">
			</div>
			<div class="front">
				<img class="logo_wiki" src="../utilidad/img/suscerte2.png">
			</div>		
		</div>
				<img class="wiki_letra" src="../utilidad/img/wiki_letra.png">
		<div><br>
				<header>
					<div class="menu_bar">
						<a href="#" class="bt-menu"> <span class="glyphicon glyphicon-menu-hamburger"></span> Menu</a>
					</div>
					<nav>
						<ul class="menu">
							<li><a class="letra_efecto" href=".."><span class="glyphicon glyphicon-triangle-left" aria-hidden="true"></span> Regresar</a></li>
						<hr>
							<li align="center">Unidades de Análisis Forense</li><br>
							<li><a class="letra_efecto" href="fuentes_abiertas/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Fuentes Abiertas</a></li>
							<li><a class="letra_efecto" href="equipos_moviles/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Equipos Moviles</a></li>	
							<li><a class="letra_efecto" href="dispositivos_almacenamiento/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dispositivos de Almacenamiento</a></li>
							<li><a class="letra_efecto" href="electronica/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Electrónica</a></li>
							<li><a class="letra_efecto" href="img_aud_vid/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Imágenes, Audio y Video</a></li>
							<br>

							<?php	
			                session_start();
			                	 if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager Cenif") {		                	 

			                		echo '<li>Administración</li>
		                				  <li><a class="letra_admin_efecto" href="Usuarios"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Usuarios Cenif</a></li>
		                				  <li><a class="letra_admin_efecto" href="bitacora"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Bitácora CENIF</a></li>';
			                		
			                	}

			                ?>
						</ul>					
					</nav>
				</header>			
									
					
			<!--<ul class="menu">
				<li class="letra_efecto"><a href="ubicacion.php">Ubicación</a></li>	
				<li class="letra_efecto"><a href="ayuda.php">Ayuda</a></li>
			</ul>-->
		</div>
	</div>
</section>