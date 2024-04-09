<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Trio Sabroso Delivery</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
    <header>
        <nav>
            <div class="logo">
                <img src="../../../public/trio_sabroso_logo-transformed.png" alt="LOGO">
            </div>
            <div class="menu">
                <a href="#">Inicio</a>
                <a href="#">Productos</a>
                <a href="#">Contacto</a>
                <button id="sessionButton">INICIAR SESIÓN</button>
            </div>
        </nav>
        <div class="hero">
            <h1>PIDE EN TRIO SABROSO</h1>
            <p>GRATIS EN PEDIDOS SUPERIORES A 30€</p>
            <button id="orderButton">HAZ TU RESERVA</button>
        </div>
    </header>

    <footer>
        <?php require_once '../../requiered/footer.php'; ?>
    </footer>

    <script>
        // Aquí puedes añadir JavaScript si es necesario
        $(document).ready(function() {
            // Toggle dropdown on click
            $('.dropbtn').click(function() {
                $('.dropdown-content').toggle();
            });

            // Close the dropdown if the user clicks outside of it
            $(window).click(function(e) {
                if (!e.target.matches('.dropbtn')) {
                    $('.dropdown-content').hide();
                }
            });

            // Prevent events from getting dispatched to the parent
            $('.dropdown').click(function(event) {
                event.stopPropagation();
            });
        });
    </script>
</body>

</html>