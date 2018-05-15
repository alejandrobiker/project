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
		<div>
				<header>
					<div class="menu_bar">
						<a href="#" class="bt-menu"> <span class="glyphicon glyphicon-menu-hamburger"></span> Menu</a>
					</div>
					<nav>
						<ul class="menu">
							<li><a class="letra_efecto" href=".."><span class="glyphicon glyphicon-triangle-left" aria-hidden="true"></span> Regresar</a></li>
						<hr class="hr_menu">
							<li align="center">VenCERT</li><br>
							<li><a class="letra_efecto" href="gestion_incidentes/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Gestión de Incidentes</a></li>
							<li><a class="letra_efecto" href="seguridad_logica/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Seguridad Lógica</a></li>	
							<li><a class="letra_efecto" href="OAM/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> OAM</a></li>
							<br>

							<?php	
			                session_start();
			                	 if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager Vencert") {		                	 

			                		echo '<li>Administración</li>
		                				  <li><a class="letra_admin_efecto" href="Usuarios"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Usuarios Vencert</a></li>
		                				  <li><a class="letra_admin_efecto" href="bitacora"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Bitácora VenCERT</a></li>';
			                		
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