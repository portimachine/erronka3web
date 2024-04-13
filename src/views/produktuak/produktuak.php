<?php
require_once '../../requiered/head.php';
?>
 
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuestra Carta</title>
    <link rel="stylesheet" type="text/css" href="produktuak.css">
</head>
 
<body>
    <div class="container">
        <?php
        require_once '../../requiered/konexioa.php';
 
        $conn = connection(); // Asumiendo que esto devuelve la conexión.
 
        $sql = "SELECT izena, prezioa FROM platerak";
        $result = $conn->query($sql);
 
        if ($result->num_rows > 0) {
            echo "<div id='menu'>";
            while ($row = $result->fetch_assoc()) {
                echo "<div class='plato'>";
                echo "<span class='nombre'>" . $row['izena'] . "</span>";
                echo "<span class='dots'>.......................</span>";
                echo "<span class='precio'>" . $row['prezioa'] . "€</span>";
                echo "</div>";
            }
            echo "</div>";
        } else {
            echo "<p class='no-platos'>No hay platos disponibles.</p>";
        }
        $conn->close();
        ?>
    </div>
</body>
 
</html>