
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Estacionate</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>

            
         @media (max-width: 600px) {
           .icon-container {
                text-align: center;
                margin: 20px 0;
                left: 15%!important;
                position: fixed;
                z-index: 7000;
                margin-top: 70px!important;
            }
           .navbar-toggler {
                border-color: white!important; /* Cambia el color del borde */
            }

            .navbar-toggler-iconn {
                background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='white' height='30' width='30' viewBox='0 0 30 30'%3E%3Cpath stroke='white' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E")!important;
            }

        }     
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
            height: 90vh;
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
            margin-top: 100px;
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
        nav{
           background-color: #1e1e1e;

        }
        .nav-link{
            color: white!important;
        }

    </style>
</head>
<body>
   
<nav class="navbar navbar-expand-lg navbar-light  fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#"><img src="assets/logo.png" width="150"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarNav" style="justify-content: flex-end;">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="recurrentes.html">Lugares Recurrentes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="recomendacioness.html">Recomendaciones</a>
                </li>
            </ul>
            <form class="d-flex ms-auto">
                <input class="form-control me-2" type="search" placeholder="Buscar..." aria-label="Buscar">
                <button class="btn btn-outline-success" type="submit" style="margin-left: 10px;">Buscar</button>
            </form>
             <a href="login.html" class="nav-link">
                <button class="btn btn-outline-primary" type="submit">Login</button>
            </a>
        </div>
    </div>
</nav>


    <div class="icon-container" >
        <i class="fas fa-car seleccionado"></i>
        <i class="fas fa-motorcycle"></i>
        <i class="fas fa-truck"></i>
        <i class="fas fa-bicycle"></i>
    </div>
  
    <div class="map-container">
        <div id="map"></div>
    </div>

    <div class="text-center bottom-button">
        <a href ="index2.html" class="btn btn-primary btn-lg">Buscar estacionamientos</a>
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


<script>
    // Añadir un evento para seleccionar íconos
    const icons = document.querySelectorAll('.icon-container i');

    icons.forEach(icon => {
        icon.addEventListener('click', () => {
            // Remover la clase "seleccionado" de todos los íconos
            icons.forEach(i => i.classList.remove('seleccionado'));
            // Añadir la clase "seleccionado" al ícono clicado
            icon.classList.add('seleccionado');
        });
    });
</script>
</body>
</html>
