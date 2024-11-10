<%-- 
    Document   : login
    Created on : 9 nov. 2024, 20:46:58
    Author     : LAB-USR-AREQUIPA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            height: 100vh;
            background-color: rgb(126, 29, 29); 
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Nunito', sans-serif;
            font-size: 12px;
        }
        .login-container {
            background-color: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            display: flex;
            align-items: center; 
        }
        .form-container {
            
            display: flex;
            flex-direction: column; 
            
            
        }
        .form-group {
            font-family: 'Nunito', sans-serif;
            font-size: 15px;
            font-weight: bold;
            margin: 10px 0; 
        }
        .form-control {
            border-radius: 10px;
            padding: 0.5rem; 
            width: 100%;
        }
        .registro button,
        #registro1 {
            font-family: 'Nunito',sans-serif;
            background-color: rgb(126, 29, 29);
            border-color: rgb(126, 29, 29);
            border-radius: 10px;
            color: white; 
            font-weight: bold;
            padding: 0.5rem 1rem; 
            cursor: pointer;
            margin-top: 10px; 
            text-align: center; 
            font-size: 15px;
        }
        #registro1 {
            display: inline-block; 
            text-decoration: none; 
        }
        .imagen.login img {
            padding: 40px;
       
            border-radius: 20px; 
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="form-container">
            <img src="assets/Rojo@4x.png" alt="" height="70px">
            <form>
                <div class="form-group">
                    <label for="username">Usuario</label>
                    <input type="text" class="form-control" id="username" name="username" required placeholder="demo@demo.com">
                </div>
                <div class="form-group">
                    <label for="password">Contraseña</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="registro">
                    <button type="submit" class="btn btn-success btn-block">Entrar</button>
                    <a id="registro1" class="btn btn-primary btn-block" href="registrarse.html">Registrarse</a>
                </div>
            </form>
        </div>
        <div class="imagen login">
            <img src="assets/logo-mpa-e1672925678410.png" alt="" >
        </div>
    </div>   
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>