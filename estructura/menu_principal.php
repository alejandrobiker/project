<section class="menu">
	<div class="list-group color_menu">					
	<!-- <div class="list-group-item"> -->
		<div class="flip3D" align="center">
			<div class="back">
				<img class="logo_wiki" src="utilidad/img/wiki.png">
			</div>
			<div class="front">
				<img class="logo_wiki" src="utilidad/img/suscerte2.png">
			</div>
		</div>
			<img class="wiki_letra" src="utilidad/img/wiki_letra.png">
		<div>

			<header>
				<div class="menu_bar">
					<a href="#" class="bt-menu"> <span class="glyphicon glyphicon-menu-hamburger"></span> Menu</a>
				</div>
				<nav>
					<ul class="menu">
						<li align="center"><h5>Departamentos</h5></li><br>
						<li><a class="letra_efecto" href="wiki_vencert/home"><span class="glyphicon glyphicon-cog"></span> VenCERT</a></li>
						<li><a class="letra_efecto" href="wiki_cenif/home"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> CENIF</a></li>
						<li><a class="letra_efecto" href="wiki_administracion/home"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Administración</a></li>	
						<li><a class="letra_efecto" href="wiki_planificacion_organizacion_presupuesto/home"> <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Planificación, Organización y Presupuesto</a></li>	
						<li><a class="letra_efecto" href="wiki_asesoria_legal/home"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Asesoría Legal</a></li>	
						<li><a class="letra_efecto" href="wiki_recursos_humanos/home"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Recursos Humanos</a></li>	
						<li><a class="letra_efecto" href="wiki_servicio_tecnico/home"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Área Técnica</a></li>	
						<!-- <li><a class="letra_efecto" href="wiki_formacion_presencial/home"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Formación Presencial y en Linea</a></li> -->
						<br>				

			                <?php	
			                session_start();
			                	 if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Administrador Principal" || $_SESSION['userrol'] == "Administrador") {		                	 

			                		echo '<li>Administración</li>
		                				  <li><a class="letra_admin_efecto" href="Usuarios"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Usuarios</a></li>
		                				  <li><a class="letra_admin_efecto" href="bitacora"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Bitácora</a></li>';			                		
			                	}

			                ?>	

						<!-- <br>	
						<li>Material de apoyo</li>
						<li class="letra_efecto"><a href="wiki_formacion_presencial/home"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Manual de Usuarios</a></li>
						<li class="letra_efecto"><a href="wiki_formacion_presencial/home"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Manual de Tecnico</a></li> -->
							
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