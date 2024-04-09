<?php
require_once '../../requiered/head.php';
?>

<head>
    <title>Formulario de Inicio de Sesión y Registro</title>
    <link rel="stylesheet" type="text/css" href="iniciarSesion.css">
</head>

<body>
    <center>
        <div id="login-form">
            <h2>Iniciar Sesión</h2>
            <form>
                <input type="text" id="login-username" placeholder="Nombre de usuario" required>
                <input type="password" id="login-password" placeholder="Contraseña" required>
                <button type="submit">Iniciar Sesión</button>
            </form>
        </div>

        <div id="register-form" style="display:none;">
            <h2>Registrarse</h2>
            <form method="post"> 
                <input type="text" name="username" placeholder="Nombre de usuario" required>
                <input type="text" name="nombre" placeholder="Nombre" required>
                <input type="text" name="apellido1" placeholder="Primer apellido" required>
                <input type="text" name="apellido2" placeholder="Segundo apellido">
                <input type="text" name="nan" placeholder="DNI" required>
                <input type="number" name="telefonoa" placeholder="Telefonoa" required>
                <input type="email" name="email" placeholder="Correo electrónico" required>
                <input type="password" name="password" placeholder="Contraseña" required>
                <button type="submit">Registrarse</button>
            </form>
        </div>
        <?php
        include '../../requiered/konexioa.php';

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Recogemos los datos del formulario
            $nan = $_POST['nan'];
            $nombre = $_POST['nombre'];
            $apellido1 = $_POST['apellido1'];
            $apellido2 = $_POST['apellido2'] ?? '';
            $telefonoa = $_POST['telefonoa'];
            $emaila = $_POST['email'];
            $usuarioa = $_POST['username'];
            $pasahitza = password_hash($_POST['password'], PASSWORD_DEFAULT);

            $conn = connection();

            // Preparamos la consulta SQL para insertar los datos sin banku_zenbakia
            $stmt = $conn->prepare("INSERT INTO bezeroa (NAN, izena, abizena, abizena2, telefonoa, emaila, usuarioa, pasahitza) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("ssssssss", $nan, $nombre, $apellido1, $apellido2, $telefonoa, $emaila, $usuarioa, $pasahitza);

            if ($stmt->execute()) {
                echo "Usuario registrado con éxito.";
            } else {
                echo "Error al registrar el usuario: " . $stmt->error;
            }

            $stmt->close();
            $conn->close();
        }
        ?>
        <button id="switch-button">¿No tienes cuenta? Regístrate</button>
    </center>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="scripts.js"></script>
    <script>
        $(document).ready(function() {
            $("#switch-button").click(function() {
                $("#login-form").toggle();
                $("#register-form").toggle();

                if ($("#login-form").is(":visible")) {
                    $("#switch-button").text("¿No tienes cuenta? Regístrate");
                } else {
                    $("#switch-button").text("¿Ya tienes cuenta? Inicia sesión");
                }
            });
        });
    </script>
</body>

</html>