<header>
    <img src="img/static/favicon.png" alt="Logo">
    <nav>
        <ul>
            <li><a href="?page=announcements">Ogłoszenia</a></li>
            <li><a href="?page=collections"><i class="fa-solid fa-hand-holding-heart"></i>Akcje</a></li>
            <?php
            if (isset($_SESSION['login'])) {
                echo ('<li><a href="?page=account"><i class="fa-solid fa-user"></i>Twoje konto</a></li>');
                echo ('<li><a href="?page=addannouncement">Dodaj ogłoszenie</a></li>');
            } else {
                echo ('<li><a href="?page=login"><i class="fa-solid fa-user"></i>Twoje konto</a></li>');
                echo ('<li><a href="?page=login">Dodaj ogłoszenie</a></li>');
            }
            ?>
        </ul>
    </nav>
</header>