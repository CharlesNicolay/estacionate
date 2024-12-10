<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REGISTRARSE - Mapa</title>
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
        <img src="<?php echo base_url();?>/assets/Rojo@4x.png" alt="" height="60px">
        <?php if (session()->getFlashdata('error')): ?>
            <div style="color: red;">
                    <?= session()->getFlashdata('error') ?>
                </div>
            <?php endif; ?>
        <form action="<?php echo base_url('registrarse_post')?>" method="POST">
            <div class="form-group">
                <label for="username">Nombre</label>
                <input type="text" class="form-control" id="username" name="nombre" required placeholder="carlos">
            </div>
            <div class="form-group">
                <label for="username">Apellidos</label>
                <input type="text" class="form-control" id="apelliod" name="apellidos" required placeholder="apellido">
            </div>
             <div class="form-group">
                <label for="username">Documento de Identidad</label>
                <input type="number" class="form-control" id="username" name="username" placeholder="Dni o carnet de extranjeria" min="11111111" max="9999999999" required>
            </div>
            <div class="form-group">
                <label for="username">Placa</label>
                <input type="text" class="form-control" id="placa" name="placa" required placeholder="X2P-452" pattern="^[A-Z]{1}[0-9]{1}[A-Z]{1}-[0-9]{3}$" maxlength="7" >
            </div>
            <div class="form-group">
                <label for="username">Celular</label>
                <input type="number" class="form-control" id="celular" name="celular" required placeholder="999999999" min="900000000" max="999999999">
            </div>
            <div class="form-group">

                <label for="password">Contraseña</label>
                <input type="password" id="password" class="form-control" id="password" name="password" required pattern="^(?=.*[0-9])(?=.*[\W_]).{6,}$" title="La contraseña debe contener al menos un número, un carácter especial y tener al menos 6 caracteres." >
            </div>
            <button type="submit" class="btn btn-primary btn-block">Registrarme</button>
        </form>
    </div>
     <script>
    document.getElementById('passwordForm').addEventListener('submit', function(event) {
      const passwordInput = document.getElementById('password');
      const passwordValue = passwordInput.value.trim();
      
      // Expresión regular para validar la contraseña
      const regex = /^(?=.*[0-9])(?=.*[\W_]).{6,}$/;

      if (!regex.test(passwordValue)) {
        event.preventDefault(); // Detener el envío si no es válida
        alert('La contraseña debe contener al menos un número, un carácter especial y tener al menos 6 caracteres.');
      }
    });
  </script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
