<?php
require_once '../../requiered/head.php';
?>
<link rel="stylesheet" href="<?= HREF_SRC_DIR ?> /views/index/index.css">
<div class="hero">
            <h1>PIDE EN TRIO SABROSO</h1>
            <p>GRATIS EN PEDIDOS SUPERIORES A 30€</p>
            <button id="orderButton">HAZ TU RESERVA</button>
        </div>
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