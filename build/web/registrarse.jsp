<%-- 
    Document   : registrarse
    Created on : 9 nov. 2024, 21:09:05
    Author     : LAB-USR-AREQUIPA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Mapa</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            height: 100vh;
            background-color: rgb(126, 29, 29);
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-container {
            background-color: #fff;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }
        .btn-block{
            background-color: rgb(126, 29, 29);
            border: 1px solid rgb(126, 29, 29);
            font-family: 'Nunito' sans-serif;
            font-weight: bold;

        }
        .form-group{
            font-family: 'Nunito' sans-serif;
            font-weight: bold;
            color:grey; 
        }
    </style>
</head>
<body>
    <div class="login-container">
        <img src="assets/Rojo@4x.png" alt="" height="70px">
        <form>
            <div class="form-group">
                <label for="username">Nombre</label>
                <input type="text" class="form-control" id="username" name="username" required placeholder="carlos">
            </div>
            <div class="form-group">
                <label for="username">Apellidos</label>
                <input type="text" class="form-control" id="username" name="username" required placeholder="apellido">
            </div>
            <div class="form-group">
                <label for="username">Placa</label>
                <input type="text" class="form-control" id="username" name="username" required placeholder="X2P-452">
            </div>
            <div class="form-group">
                <label for="username">Celular</label>
                <input type="text" class="form-control" id="username" name="username" required placeholder="99999999">
            </div>
            <div class="form-group">
                <label for="username">Correo</label>
                <input type="text" class="form-control" id="username" name="username" required placeholder="demo@demo.com">
            </div>
            <div class="form-group">

                <label for="password">Contraseña</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <a href="index.html" class="btn btn-primary btn-block">Registrarme</a>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>