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
            <form method="post" action="iniciarSesion.php">
                <input type="text" name="username" id="login-username" placeholder="Nombre de usuario" required>
                <input type="password" name="password" id="login-password" placeholder="Contraseña" required>
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
        require_once '../../requiered/konexioa.php';

        if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['username']) && isset($_POST['password'])) {
            // Recogemos los datos del formulario
            $usuarioa = $_POST['username'];
            $pasahitza = $_POST['password'];

            $conn = connection();

            // Preparamos la consulta SQL para obtener el hash de la contraseña
            $stmt = $conn->prepare("SELECT pasahitza FROM bezeroa WHERE usuarioa = ?");
            $stmt->bind_param("s", $usuarioa);
            $stmt->execute();
            $stmt->store_result();

            // Verificamos si se encontró el usuario
            if ($stmt->num_rows == 1) {
                $stmt->bind_result($hashed_password);
                $stmt->fetch();

                // Verificamos si la contraseña es correcta
                if (password_verify($pasahitza, $hashed_password)) {
                    // Iniciar sesión aquí
                    $_SESSION['usuario'] = $usuarioa;
                    header('Location: ../index/index.php');
                    exit;
                } else {
                    echo "<script>alert('Nombre de usuario o contraseña incorrectos.');</script>";
                }
            } else {
                echo "<script>alert('Nombre de usuario o contraseña incorrectos.');</script>";
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