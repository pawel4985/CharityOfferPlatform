<?php 
// SELECT AUTO_INCREMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'charity' AND TABLE_NAME = 'announcements' 
// ostatnie id dodane przyda się przy tworzeniu folderu na zdjęcia

require_once("dbCon.php");

if($_SERVER['REQUEST_METHOD']==="POST"){
    $data = json_decode(file_get_contents('php://input'),true);
    if($data){
        $login = $data['login'];
        $password =password_hash($data['password'],PASSWORD_DEFAULT);
        $check=mysqli_query($db,"SELECT * FROM users WHERE login='$login'");
        if(mysqli_num_rows($check)==0){
            mysqli_query($db,"INSERT INTO users(login,password) VALUES ('$login','$password');");
            echo(json_encode("Utworzono konto!"));
        }else{
            echo(json_encode("Istnieje już konto o tym loginie!"));
        }
    }
    
}

?>