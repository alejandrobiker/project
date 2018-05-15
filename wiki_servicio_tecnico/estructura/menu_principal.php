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
							<li align="center">Área Técnica</li><br>
							<li><a class="letra_efecto" href="certificacion_electronica_criptografica/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Servicio de Certificación Electrónica y Criptográfica</a></li>
							<li><a class="letra_efecto" href="formacion_desarrollo/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Investigación, Formación y Desarrollo</a></li>
							<li><a class="letra_efecto" href="estandarizacion_fiscalizacion/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Estandarización y Fiscalización</a></li>
							<li><a class="letra_efecto" href="area_tecnica/index"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Área Técnica</a></li>
							<br>

							<?php	
			                session_start();
			                	 if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager Area Tecnica") {		                	 

			                		echo '<li>Administración</li>
		                				  <li><a class="letra_admin_efecto" href="Usuarios"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Usuarios Área Técnica</a></li>
		                				  <li><a class="letra_admin_efecto" href="bitacora"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Bitácora Área Técnica</a></li>';
			                		
			                	}

			                ?>
						</ul>
					</nav>
				</header>


			<!--<ul class="menu">
				<li><a class="letra_efecto" href="ubicacion.php">Ubicación</a></li>
				<li><a class="letra_efecto" href="ayuda.php">Ayuda</a></li>
			</ul>-->
		</div>
	</div>
</section>
