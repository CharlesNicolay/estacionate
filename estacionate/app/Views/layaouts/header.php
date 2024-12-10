<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="/Logo.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta name="description" content="Gimnasia artistica, gimnasia ritmica">
   <link href="http://fonts.cdnfonts.com/css/gotham" rel="stylesheet">
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>             
   <title>Estacionate</title>
  
   
  </head>
  <style type="text/css">
   @media (max-width: 1250px) {
     h3, .titulo{
      font-size: 2.5rem!important;
     }
     h2{
      font-size: 2.5rem!important;
     }
     .swiper-slide{
      width: 100%!important;
     }
   }
   .bg-black{
      background-color: black;
   }

       .titulo{
          color: #f5e3c3;  
          transition: font-size 0.3s ease;
        }

        .titulo:hover {
                font-size: 1.2em; /* Aumenta el tamaño de la fuente al pasar el mouse */
            }
        .header {
            background: rgb(92,57,39);
            background: linear-gradient(90deg, rgba(92,57,39,1) 0%, rgba(60,24,18,0.9528186274509804) 31%, rgba(107,53,37,1) 68%, rgba(0,0,0,1) 100%);
            padding: 20px;
            text-align: center;
            font-family: 'Georgia', serif;
            color: #f5e3c3;
            font-size: 3em;
        }
       

       .cart{
         cursor: pointer;
       }
       .cart2 {
            margin-bottom: 20px;
             background-color: #5c3927;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;

        }
        .categories {
            background-color: #e09d61;
            padding: 10px 0;
            text-align: center;
            height: 90px;
        }
        .categories button {
            margin: 0 10px;
            font-size: 1.2em;
            color: white;
            background-color: #8b4a31;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            
        }
        .cart {
            position: fixed;
            top: 120px;
            right: 20px;
            background-color: #5c3927;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
        }
         .modal-header {
            background-color: #5c3927;
            color: white;
        }
        .categories button:hover {
            background-color:brown;
            font-weight:400;
             /* Aumenta el tamaño de la fuente al pasar el mouse */
        }
        /* Estilo del botón del ícono */
        .question-button {
            position: absolute;
            width: 70px;
            height: 70px;
            left: 1370px;
            top: 270px;
            background-color: rgba(217, 217, 217, 0.1); /* Fondo semitransparente */
            border: 2px solid #000000;
            border-radius: 50%; /* Hacer el botón circular */
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
        }
        /* Estilo del SVG dentro del botón */
        .question-button svg {
            width: 40px;
            height: 40px;
        }

        /* Cambiar el color del fondo al pasar el mouse */
        .question-button:hover {
            background-color: rgba(217, 217, 217, 0.3); /* Cambio de color al hacer hover */
        }
        .search-bar {
            padding: 20px;
            display: flex;
            justify-content: center;
        }
        .search-bar input {
            width: 70%;
            border-radius: 50px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        .section-title {
            font-family: 'Georgia', serif;
            font-size: 1.8em;
            text-align: left;
            color: #6b8e23;
            margin-top: 20px;
        }
        .book-section {
            background-color: #d9b38c;
            padding: 20px;
            border-radius: 15px;
            margin: 20px 0;
        }
        .book-card {
            background-color: #f0f0f0;
            border-radius: 15px;
            padding: 10px;
            text-align: center;
        }
        .book-card img {
            width: 150px;  
            height: 225px;
            object-fit: cover;
            border-radius: 10px;
        }
        .price {
            font-weight: bold;
            font-size: 2.0em;
            margin-top: 10px;
        }
        .price button {
            font-weight: bold;
            width: 200px;
            left: 289px;
            top: 555px;
            background: #FCD531;
            border-width: 1px;
            border-radius: 25px;
            cursor: pointer;
        }
        .description {
            position: static;
            font-family: 'Laila';
            font-size: 16px;
            font-weight: 400;
            line-height: 1.5;
            color: #333333;
        }
        /* Estilo del botón */
        .arrow-button {
            display: flex;
            flex-direction: row;
            align-items: center;
            padding: 6px;
            gap: 10px;
            position: absolute;
            width: 97.75px;
            height: 97.75px;
            left: 1680px;
            top: 488px;
            background-color: white;
            border-radius: 50%; /* Para que sea circular */
            border: 2px solid #000000;
            cursor: pointer;
            z-index: 1;
            isolation: isolate;
        }
        /* Botón 1 */
        .button-1 {
            left: 1680px; /* Posiciona a la derecha */
            top: 488px; /* Posiciona el primer botón */
        }

        /* Botón 2, 700 píxeles más abajo que el botón 1 */
        .button-2 {
            left: 1680px; /* Mismo desplazamiento horizontal que el botón 1 */
            top: 989px; /* 700px más abajo */
        }

        /* Estilo del icono dentro del botón */
        .arrow-button .icon {
            width: 85.75px;
            height: 85.75px;
            border: 0px solid #000000;
            flex-grow: 0;
        }

        /* Ajustes para la posición del icono dentro del botón */
        .arrow-button .icon svg {
            width: 100%;
            height: 100%;
        }
        .login-button {
            position: absolute;
            top: 20px; /* Ajusta según sea necesario */
            right: 20px; /* Ajusta según sea necesario */
            background-color: #5c3927; /* Fondo del botón */
            border: none;
            border-radius: 50%; /* Botón circular */
            width: 50px; /* Tamaño del botón */
            height: 50px; /* Tamaño del botón */
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            transition: background-color 0.3s;
            background-color: #8b4a31;
        }

        .login-button:hover {
            background-color: #d9b38c; /* Color al pasar el mouse */
        }

        .login-button svg {
            width: 20px; /* Tamaño del icono */
            height: 20px; /* Tamaño del icono */
        }
        .fa-user{
            font-size: 20px;
        }
    </style>
</head>
<body>
   <div id="app" data-v-app="">
    <div class="header">
        <a class="titulo" href = "<?php echo base_url('/')?>">Letras y Sueños</a>
        <a class="login-button" href="<?php echo base_url('login')?>">
            <!-- Icono de login, puedes usar un SVG o un icono de fuente -->
           <i class="fas fa-user" style="color: white;"></i>
        </a>
    </div>

   
    
 