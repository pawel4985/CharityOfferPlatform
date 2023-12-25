<?php 
session_start();

$sessionExpiration = 100;
if(isset($_SESSION["last_activity"])){
    if((time() - $_SESSION["last_activity"]) > $sessionExpiration){
        session_unset();
        session_destroy();
    }
}

?>