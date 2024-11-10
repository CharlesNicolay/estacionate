<%-- 
    Document   : recurrentes
    Created on : 9 nov. 2024, 21:09:13
    Author     : LAB-USR-AREQUIPA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página con Mapa</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>

            
           
        body {
            background: linear-gradient(rgb(255 255 255 / 55%), rgb(255 255 255 / 67%)), /* Gradiente */ url(assets/fondo.jpg);
            background-size: cover;
            height: auto;
            display: flex;
            flex-direction: column;
        }
        .map-container {
            flex: 1;
            position: relative;
        }
        .seleccionado
        {
            background-color: white;
            padding: 5px;
            border-radius: 20px;
            border-style: double;
        }
        #map {
            width: 100%;
            height: 600px;
        }
        .bottom-button {
            margin: 20px;
        }
        .icon-container {
            text-align: center;
            margin: 20px 0;
            left: 40%;
            position: fixed;
            z-index: 7000;
            margin-top: 66px;
        }
        .icon-container i {
            font-size: 2rem;
            margin: 0 15px;
            color: rgb(126, 29, 29);
            cursor: pointer;
            
           
        }
        .search-container {
            margin: 10px;
        }
        .container img{
            width: 100px;
            margin-right: 100px;
            display: flex;
            justify-content: space-between;

        }
        .nav-link{
            font-family: 'Nunito',sans-serif;
            color: black;
            font-size: 18px;
            font-weight: bold;
        }
        .btn-primary{
            color:#fff;
            font-family: 'Nunito', sans-serif;
            font-weight: bold;
            background-color: rgb(126, 29, 29);
            border: 2px solid rgb(126, 29, 29);
        }
        .container{
            color: black;
            font-size: 18px;
            font-family: 'Nunito';
        }
        .btn-outline-primary{
            background-color: rgb(126, 29, 29);
            color: #fff;
            border: 1px solid  rgb(126, 29, 29);
        }
        .btn-outline-success{
            background-color: rgb(126, 29, 29);
            color: #fff;
            border: 1px solid  rgb(126, 29, 29);
        }

    </style>
</head>
<body>
   
<nav class="navbar navbar-expand-lg navbar-light bg-lightt fixed-top">
    <div class="container">
        <img src="assets/Rojo@4x.png" alt="">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item ">
                    <a class="nav-link" href="index.html">Inicio</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link " href="recurrentes.html">Lugares Recurrentes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="recomendacioness.html">Recomendaciones</a>
                </li>
            </ul>
            <form class="d-flex ms-auto">
                <input class="form-control me-2" type="search" placeholder="Buscar..." aria-label="Buscar">
                <button class="btn btn-outline-success" type="submit">Buscar</button>
            </form>
             <a href="login.html" class="nav-link">
                <button class="btn btn-outline-primary" type="submit">Login</button>
            </a>
        </div>
    </div>
</nav>

    <div class="icon-container">
        <i class="fas fa-car seleccionado"></i>
        <i class="fas fa-motorcycle"></i>
        <i class="fas fa-truck"></i>
        <i class="fas fa-bicycle"></i>
    </div>
   

    <div class="container " style="margin-top: 150px;">
        <h1 class="text-center">Lugares Recurrentes</h1>
        <table class="table table-striped mt-4">
            <thead>
                <tr>
                    <th scope="col">Ruta</th>
                    <th scope="col">Distancia</th>
                    <th scope="col">Duración</th>
                    <th scope="col">Descripción</th>
                    <th scope="col">Opciones</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Ruta del Parque</td>
                    <td>5 km</td>
                    <td>30 min</td>
                    <td>Parqueo exclusivo, con sombra, y autolovado </td>
                    <td><a href="mapa2.html"> <button class="btn btn-primary">IR</button><a></td>
                </tr>
                <tr>
                    <td>Sendero de la Montaña</td>
                    <td>10 km</td>
                    <td>1 h 15 min</td>
                    <td>Parqueo exclusivo, con sombra, y autolovado </td>
                     <td><button class="btn btn-primary">IR</button></td>
                </tr>
                <tr>
                    <td>Costa y Mar</td>
                    <td>7 km</td>
                    <td>1 h</td>
                    <td>Parqueo exclusivo, con sombra, y autolovado, cambio de aceite</td>
                     <td><button class="btn btn-primary">IR</button></td>
                </tr>
                <tr>
                    <td>Ruta Histórica</td>
                    <td>8 km</td>
                    <td>1 h</td>
                    <td>Parqueo exclusivo, con sombra, y autolovado, chequeo general</td>
                     <td><button class="btn btn-primary">IR</button></td>
                </tr>
                <tr>
                    <td>Ruta Nocturna</td>
                    <td>6 km</td>
                    <td>45 min</td>
                    <td>Parqueo exclusivo, con sombra, y autolovado, venta de baterias</td>
                     <td><button class="btn btn-primary">IR</button></td>
                </tr>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>