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
                <label for="nombre">Nombre</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required placeholder="Carlos">
            </div>
            <div class="form-group">
                <label for="apellidos">Apellidos</label>
                <input type="text" class="form-control" id="apellidos" name="apellidos" required placeholder="Apellido">
            </div>
            <div class="form-group">
                <label for="placa">Placa</label>
                <input type="text" class="form-control" id="placa" name="placa" required placeholder="X2P-452">
            </div>
            <div class="form-group">
                <label for="celular">Celular</label>
                <input type="text" class="form-control" id="celular" name="celular" required placeholder="99999999">
            </div>
            <div class="form-group">
                <label for="correo">Correo</label>
                <input type="email" class="form-control" id="correo" name="correo" required placeholder="demo@demo.com">
            </div>
            <div class="form-group">
                <label for="password">Contraseña</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Registrarme</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        document.querySelector('form').addEventListener('submit', function (event) {
            // Obtener valores de todos los campos
            const nombre = document.getElementById('nombre').value.trim();
            const apellidos = document.getElementById('apellidos').value.trim();
            const placa = document.getElementById('placa').value.trim();
            const celular = document.getElementById('celular').value.trim();
            const correo = document.getElementById('correo').value.trim();
            const password = document.getElementById('password').value.trim();
    
            if (!nombre || !apellidos || !placa || !celular || !correo || !password) {
                event.preventDefault();
                alert('Todos los campos son obligatorios.');
                return;
            }
    
            // Validación de formato de correo
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(correo)) {
                event.preventDefault();
                alert('Por favor, ingrese un correo válido.');
                return;
            }
    
            // Validación de formato de placa (ejemplo: 3 letras, guion, 3 números)
            const placaRegex = /^[A-Z0-9]{3}-[0-9]{3}$/;
            if (!placaRegex.test(placa)) {
                event.preventDefault();
                alert('Ingrese una placa válida en el formato ABC-123.');
                return;
            }
    
            // Validación de celular (8-9 dígitos)
            const celularRegex = /^[0-9]{8,9}$/;
            if (!celularRegex.test(celular)) {
                event.preventDefault();
                alert('El número de celular debe tener 8 o 9 dígitos.');
                return;
            }
    
            // Validación de longitud de contraseña (mínimo 6 caracteres)
            if (password.length < 6) {
                event.preventDefault();
                alert('La contraseña debe tener al menos 6 caracteres.');
                return;
            }
        });
    </script>
</body>
</html>