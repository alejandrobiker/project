<?php
	session_start();
	if(!isset($_SESSION['usernombre']))
		header("location:index");	
?>