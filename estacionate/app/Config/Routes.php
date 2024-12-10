<?php

use CodeIgniter\Router\RouteCollection;


$routes->get('/', 'LoginController::login');
$routes->get('/login','LoginController::login');
$routes->get('/registrarse','LoginController::registro');
$routes->post('/registrarse_post','LoginController::post_registro');
$routes->post('/login_user','LoginController::login_user');

$routes->get('/admin','HomeController::index');

$routes->get('/ver_estacionamientos','HomeController::ver_estacionamientos');
$routes->get('/agregar_estacionamiento','HomeController::agregar_estacionamiento');
$routes->post('/post_add_estacionamiento','HomeController::post_add_estacionamiento');
$routes->get('/editar_estacionamiento/(:num)','HomeController::editar_estacionamiento');
$routes->post('/post_editar_estacionamiento','HomeController::post_editar_estacionamiento');
$routes->get('/eliminar_estacionamiento/(:num)','HomeController::eliminar_estacionamiento');


$routes->get('/ver_caracteristicas','HomeController::ver_caracteristicas');
$routes->get('/agregar_caracteristica','HomeController::agregar_caracteristica');
$routes->post('/post_add_caracteristica','HomeController::post_add_caracteristica');
$routes->get('/editar_caracteristica/(:num)','HomeController::editar_caracteristica');
$routes->post('/post_editar_caracteristica','HomeController::post_editar_caracteristica');
$routes->get('/eliminar_caracteristica/(:num)','HomeController::eliminar_caracteristica');

$routes->get('/ver_conductores','HomeController::ver_conductores');


$routes->get('/salir','HomeController::salir');

