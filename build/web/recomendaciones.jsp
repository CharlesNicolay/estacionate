<%-- 
    Document   : recomendaciones
    Created on : 9 nov. 2024, 21:09:30
    Author     : LAB-USR-AREQUIPA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recomendaciones de Estacionamientos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background: linear-gradient(rgb(0 0 0 / 50%), rgb(0 0 0 / 64%)), url('assets/fondo.jpg');
            background-size: cover;
            height: auto;
            display: flex;
            flex-direction: column;
        }
        .map-container {
            flex: 1;
            position: relative;
        }
        #map {
            width: 100%;
            height: 400px;
        }
        .icon-container {
            text-align: center;
            margin: 20px 0;
        }
        .icon-container i {
            font-size: 2rem;
            margin: 0 15px;
            color: #007bff;
            cursor: pointer;
        }
        .icon-container i.seleccionado {
            color: #ff0000;
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
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="index.html">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="recurrentes.html">Lugares Recurrentes</a></li>
                    <li class="nav-item"><a class="nav-link active" href="recomendaciones.html">Recomendaciones</a></li>
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

    <div class="icon-container mt-5">
        <i class="fas fa-car seleccionado" data-tipo="carro"></i>
        <i class="fas fa-motorcycle" data-tipo="moto"></i>
        <i class="fas fa-truck" data-tipo="camioneta"></i>
        <i class="fas fa-bicycle" data-tipo="bicicleta"></i>
    </div>

    <div class="search-container text-center">
        <input type="text" id="searchInput" class="form-control" placeholder="Buscar estacionamiento por nombre o dirección">
    </div>

    <div class="container mt-5">
        <h1 class="text-center">Estacionamientos Cercanos</h1>
        <table class="table table-striped mt-4">
            <thead>
                <tr>
                    <th>Estacionamiento</th>
                    <th>Dirección</th>
                    <th>Calificación</th>
                    <th>Precio por Hora</th>
                </tr>
            </thead>
            <tbody id="tableBody">
                <!-- Las filas se llenarán dinámicamente -->
            </tbody>
        </table>
    </div>

    <div id="map" class="map-container"></div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <script>
        const estacionamientos = [
            { nombre: "Estacionamiento Centro", direccion: "Calle 1, No. 123", calificacion: 4, precio: 5, tipoVehiculo: "carro", lat: -16.3989, lng: -71.535 },
            { nombre: "Estacionamiento Plaza", direccion: "Avenida 2, No. 456", calificacion: 4.5, precio: 4, tipoVehiculo: "carro", lat: -16.401, lng: -71.533 },
            { nombre: "Estacionamiento Sur", direccion: "Calle 3, No. 789", calificacion: 5, precio: 6, tipoVehiculo: "moto", lat: -16.403, lng: -71.532 },
        ];

        const map = L.map('map').setView([-16.3989, -71.535], 14);
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', { attribution: '© OpenStreetMap contributors' }).addTo(map);

        const tableBody = document.getElementById('tableBody');

        function actualizarTablaYMapa(tipo, filtro) {
            const resultados = estacionamientos.filter(est => 
                (!tipo || est.tipoVehiculo === tipo) && 
                (!filtro || est.nombre.toLowerCase().includes(filtro.toLowerCase()))
            );

            tableBody.innerHTML = "";
            resultados.forEach(est => {
                tableBody.innerHTML += `
                    <tr>
                        <td>${est.nombre}</td>
                        <td>${est.direccion}</td>
                        <td>${"★".repeat(Math.floor(est.calificacion))}</td>
                        <td>$${est.precio.toFixed(2)}</td>
                    </tr>
                `;
                L.marker([est.lat, est.lng]).addTo(map).bindPopup(est.nombre);
            });
        }

        document.querySelectorAll('.icon-container i').forEach(icon => {
            icon.addEventListener('click', function () {
                document.querySelector('.icon-container i.seleccionado').classList.remove('seleccionado');
                this.classList.add('seleccionado');
                actualizarTablaYMapa(this.getAttribute('data-tipo'), document.getElementById('searchInput').value);
            });
        });

        document.getElementById('searchInput').addEventListener('input', function () {
            const tipo = document.querySelector('.icon-container i.seleccionado').getAttribute('data-tipo');
            actualizarTablaYMapa(tipo, this.value);
        });

        actualizarTablaYMapa(); // Carga inicial
    </script>
</body>
</html>