<%-- 
    Document   : recomendaciones
    Created on : 9 nov. 2024, 21:09:30
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
            background: linear-gradient(rgb(0 0 0 / 50%), rgb(0 0 0 / 64%)), /* Gradiente */ url(assets/fondo.jpg);
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
            color: #007bff;
            cursor: pointer;
            
           
        }
        .search-container {
            margin: 10px;
        }

    </style>
</head>
<body>
   
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Mi Sitio</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="recurrentes.html">Lugares Recurrentes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="recomendacioness.html">Recomendaciones</a>
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
    <div class="search-container text-center">
        <input type="text" id="searchInput" class="form-control" placeholder="Buscar ubicación">
        <button id="searchButton" class="btn btn-primary mt-2">Buscar</button>
    </div>
    <div class="container mt-5">
        <h1 class="text-center">Estacionamientos Cercanos</h1>
        <table class="table table-striped mt-4">
            <thead>
                <tr>
                    <th scope="col">Estacionamiento</th>
                    <th scope="col">Dirección</th>
                    <th scope="col">Calificación</th>
                    <th scope="col">Precio por Hora</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Estacionamiento Centro</td>
                    <td>Calle 1, No. 123</td>
                    <td>
                        <span class="star-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </span>
                    </td>
                    <td>$5.00</td>
                </tr>
                <tr>
                    <td>Estacionamiento Plaza</td>
                    <td>Avenida 2, No. 456</td>
                    <td>
                        <span class="star-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            <i class="far fa-star"></i>
                        </span>
                    </td>
                    <td>$4.00</td>
                </tr>
                <tr>
                    <td>Estacionamiento Sur</td>
                    <td>Calle 3, No. 789</td>
                    <td>
                        <span class="star-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </span>
                    </td>
                    <td>$6.00</td>
                </tr>
                <tr>
                    <td>Estacionamiento Norte</td>
                    <td>Calle 4, No. 321</td>
                    <td>
                        <span class="star-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            <i class="far fa-star"></i>
                            <i class="far fa-star"></i>
                        </span>
                    </td>
                    <td>$3.50</td>
                </tr>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
