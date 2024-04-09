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
        <form>
            <input type="text" id=" " placeholder="Nombre de usuario" required>
            <input type="email" id="register-email" placeholder="Correo electrónico" required>
            <input type="password" id="register-password" placeholder="Contraseña" required>
            <button type="submit">Registrarse</button>
        </form>
    </div>
    
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