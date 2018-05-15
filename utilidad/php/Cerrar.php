<?php
session_start();



if(!isset($_SESSION['usernombre'])){
session_destroy();
header("Location: ../../index");

}else{

session_destroy();
header("Location: ../../index");


}


?>