<?php
require_once("modules/session.php");
?>
<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/static/favicon.png">
    <link rel="apple-touch-icon" href="img/static/favicon.png">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="main.js" defer></script>
    <title>Kupuj i wspieraj</title>
</head>

<body>
    <?php
    include "components/header.php";
    ?>
    <main>
        <?php
        $pages = [
            'login' => 'components/loginRegister.php',
            'addannouncement' => 'components/addAnnouncement.html',
            'announcements' => 'components/announcements.php',
            'logout' => 'components/logout.php',
        ];
        if (isset($_GET['page'])) {
            $page = $_GET['page'];
            include "$pages[$page]";
        } else {
            include "$pages[announcements]";
        }
        ?>
    </main>
    <footer>


    </footer>

</body>

</html>