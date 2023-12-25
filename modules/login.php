<?php 
require_once("session.php");
require_once("dbCon.php");

if($_SERVER['REQUEST_METHOD']==="POST"){
    $data = json_decode(file_get_contents('php://input'),true);
    if($data){
        $login = $data['login'];
        $password = $data['password'];
        $check = mysqli_query($db,"SELECT password FROM users WHERE login='$login'");
        if(mysqli_num_rows($check)==0){
            echo(json_encode("Konto nie istnieje!"));
        }else{
            if(password_verify($password,mysqli_fetch_row($check)[0])){
                echo(json_encode("Zalogowano!"));
                $_SESSION["login"]=$login;
                $_SESSION["last_activity"]=time();
            }else{
                echo(json_encode("Niepoprawne hasło!"));
            }
        }
    }
    
}

?>