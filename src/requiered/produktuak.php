<?php
session_start(); // Start the session

// Configuración de la conexión a la base de datos
$host = 'localhost'; // o la IP del servidor de la base de datos
$dbname = 'erronkadb';
$user = 'root';
$pass = '1WMG2023';

try {
    // Conexión con PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
    // Establecer el modo de error PDO a excepción
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Consulta SQL para recuperar productos
    $stmt = $pdo->query('SELECT izena, prezioa FROM produktuak');
    
    $items = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    // Función para mostrar los productos
    function display_items($items) {
        foreach ($items as $item) {
            echo "<div class='item'>";
            echo "<h3>".htmlspecialchars($item['nombre'])."</h3>";
            echo "<p>".number_format($item['precio'], 2)."€</p>";
            echo "</div>";
        }
    }
    
} catch(PDOException $e) {
    echo "Error de conexión: " . $e->getMessage();
}
?>
