<!DOCTYPE html>
<html lang="es">

<head>
    <?php
    
    session_start();
    
    define('APP_DIR', $_SERVER['DOCUMENT_ROOT'] . '/erronka3web'); //Aplikazioaren karpeta edozein lekutatik atzitzeko.
    define('HREF_VIEWS_DIR', '/erronka3web/src/views'); //Aplikazioaren views karpeta edozein lekutatik deitzeko
    define('HREF_SRC_DIR', '/erronka3web/src'); //Aplikazioaren views karpeta edozein lekutatik deitzeko
    $link = APP_DIR . "/src/language/translations.php";
    require_once ($link); //APP_DIR erabilita itzulpenen dokumentua atzitu dugu.

   //define('APP_DIR', $_SERVER['DOCUMENT_ROOT'] . '/Desktop/HolandaFantasy/WEB3/'); //Aplikazioaren karpeta edozein lekutatik atzitzeko.
   //define('HREF_VIEWS_DIR', '/Desktop/HolandaFantasy/WEB3/src/views'); //Aplikazioaren views karpeta edozein lekutatik deitzeko
   //define('HREF_SRC_DIR', '/Desktop/HolandaFantasy/WEB3/src'); //Aplikazioaren views karpeta edozein lekutatik deitzeko
   //$link = APP_DIR . "src/language/translations.php";
   //require_once ($link); //APP_DIR erabilita itzulpenen dokumentua atzitu dugu.
   //define('APP_DIR', $_SERVER['DOCUMENT_ROOT'] . '/Desktop/HolandaFantasy/WEB3/'); //Aplikazioaren karpeta edozein lekutatik atzitzeko.
   //define('HREF_VIEWS_DIR', '/Desktop/HolandaFantasy/WEB3/src/views'); //Aplikazioaren views karpeta edozein lekutatik deitzeko
   //define('HREF_SRC_DIR', '/Desktop/HolandaFantasy/WEB3/src'); //Aplikazioaren views karpeta edozein lekutatik deitzeko
   //$link = APP_DIR . "src/language/translations.php";
   //require_once ($link); //APP_DIR erabilita itzulpenen dokumentua atzitu dugu.
    ?>
    <meta charset="UTF-8">
    <title>Trio Sabroso Delivery</title>
    <link rel="stylesheet" href="<?= HREF_SRC_DIR ?> /css/head.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
    <header>
        <nav>
            <div class="logo">
                <img src="../../public/trio_sabroso_logo-transformed.png" alt="LOGO">
            </div>
            <?php
            if ((isset($_SESSION['usuario']))and(($_SESSION['usuario']) != "")) {
                $usuarioa = $_SESSION["usuario"];
            }else{
                $usuarioa = "INICIAR SESIÓN";
            }
            ?>
            <div class="menu">
                <a href="<?= HREF_SRC_DIR ?> /views/index/index.php">Inicio</a>
                <a href="<?= HREF_SRC_DIR ?> /views/produktuak/produktuak.php">Productos</a>
                <a href="#">Contacto</a>
                <button id="sessionButton"><a href="<?= HREF_SRC_DIR ?> /views/iniciarSesion/iniciarSesion.php"><?= $usuarioa ?></a></button>
            </div>
            
            
        </nav>
        
    </header>