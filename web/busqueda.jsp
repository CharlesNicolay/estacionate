<%-- 
    Document   : busqueda
    Created on : 9 nov. 2024, 21:08:02
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
            height: 150vh;
            display: flex;
            flex-direction: column;
        }
        .map-container {
            flex: 1;
            position: relative;
        }
        #map {
            width: 100%;
            height: 90vh;
        }
        .bottom-button {
            margin: 20px;
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
        .search-container {
            margin: 10px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Mi Mapa</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="recurrentes.html">Lugares recurrentes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="recomendacioness.html">Recomendaciones</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="icon-container">
        <i class="fas fa-car"></i>
        <i class="fas fa-motorcycle"></i>
        <i class="fas fa-truck"></i>
        <i class="fas fa-bicycle"></i>
    </div>
    <div class="search-container text-center">
        <input type="text" id="searchInput" class="form-control" placeholder="Buscar ubicación">
        <button id="searchButton" class="btn btn-primary mt-2">Buscar</button>
    </div>
     <table class="table table-striped mt-4">
            <thead>
                <tr>
                    <th scope="col">Estacionamiento</th>
                    <th scope="col">Dirección</th>
                    <th scope="col">Calificación</th>
                    <th scope="col">Precio por Hora</th>
                    <th scope="col">dirigir ruta></th>
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
                    <td><button class="btn btn-danger">IR </button></td>
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
                    <td><button class="btn btn-danger">IR </button></td>
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
                    <td><button class="btn btn-danger">IR </button></td>
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
                    <td><button class="btn btn-danger">IR </button></td>
                </tr>
            </tbody>
        </table>
    <div class="map-container">
        <div id="map"></div>
    </div>

    <div class="text-center bottom-button">
        <button class="btn btn-primary btn-lg">Buscar estacionamientos</button>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCBIO2xriYgqPLWW2hnlwCxZNirRtUQ6lQ&callback=initMap">
</script>
    <script>
    let map, userMarker, directionsService, directionsRenderer, destinationMarker, infoWindow;

    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 15,
            center: { lat: -34.397, lng: 150.644 } // Coordenadas predeterminadas
        });

        directionsService = new google.maps.DirectionsService();
        directionsRenderer = new google.maps.DirectionsRenderer();
        directionsRenderer.setMap(map);

        infoWindow = new google.maps.InfoWindow();

        // Intentar obtener la ubicación del usuario
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(
                position => {
                    const userPos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    // Crear un marcador en la ubicación del usuario
                    userMarker = new google.maps.Marker({
                        position: userPos,
                        map: map,
                        title: 'Tu ubicación actual'
                    });

                    // Centrar el mapa en la ubicación del usuario
                    map.setCenter(userPos);

                    // Manejar clic en el mapa para agregar un marcador y mostrar la ruta

                    map.addListener('click', (event) => {
                        if (destinationMarker) {
                            destinationMarker.setMap(null); // Eliminar marcador de destino anterior
                        }
                        const clickedPos = {
                            lat:  -16.405777781209157,
                            lng: -71.54023017724609
                        };

                        // Crear un marcador en el punto seleccionado
                        destinationMarker = new google.maps.Marker({
                            position: clickedPos,
                            map: map,
                            title: 'Destino'
                        });

                        // Mostrar la ruta al punto seleccionado
                        calculateAndDisplayRoute(userPos, clickedPos);

                        // Configurar y mostrar el InfoWindow en el nuevo marcador
                        infoWindow.setContent('Destino Seleccionado: ' + clickedPos.lat + ', ' + clickedPos.lng);
                        infoWindow.open(map, destinationMarker);
                    });
                },
                () => {
                    handleLocationError(true, map.getCenter());
                }
            );
        } else {
            // El navegador no soporta la geolocalización
            handleLocationError(false, map.getCenter());
        }
    }

    function calculateAndDisplayRoute(start, end) {
        directionsService.route(
            {
                origin: start,
                destination: end,
                travelMode: google.maps.TravelMode.DRIVING
            },
            (response, status) => {
                if (status === google.maps.DirectionsStatus.OK) {
                    directionsRenderer.setDirections(response);
                } else {
                    console.error('Error al calcular la ruta: ' + status);
                }
            }
        );
    }

    function handleLocationError(browserHasGeolocation, pos) {
        document.getElementById('error').textContent = browserHasGeolocation ?
            'Error: El servicio de geolocalización falló.' :
            'Error: Tu navegador no soporta la geolocalización.';
    }
</script>
</body>
</html>