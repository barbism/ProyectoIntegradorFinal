<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="css/estilos-propios.css">
  <link rel="shortcut icon" href="./img/codoacodo-min.png" type="image/x-icon">
  <title>Trabajo Integrador Comprar tickets</title>
</head>
<body>

<header>
    <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="img/codoacodo-min.png" alt="Codo a Codo logo">
                Conf Bs As
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">La conferencia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#oradores">Los oradores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#lugar">El lugar y la fecha</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#form-orador">Conviértete en orador</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-compra-tickets active" aria-current="page" href="#">Comprar tickets</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<main>

    <section class="container pt-section">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">

                <div class="row row-cols-1 row-cols-md-3 text-center">
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-primary">
                            <div class="card-header py-3 text-white bg-primary border-primary">
                                <h4 class="my-0 fw-normal">Estudiante</h4>
                            </div>
                            <div class="card-body">
                                <p>Tienen un descuento</p>
                                <h3 class="card-title pricing-card-title">80%</h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentación</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-info">
                            <div class="card-header py-3 text-white bg-info border-info">
                                <h4 class="my-0 fw-normal">Trainee</h4>
                            </div>
                            <div class="card-body">
                                <p>Tienen un descuento</p>
                                <h3 class="card-title pricing-card-title">50%</h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentación</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-warning">
                            <div class="card-header py-3 text-white bg-warning border-warning">
                                <h4 class="my-0 fw-normal">Junior</h4>
                            </div>
                            <div class="card-body">
                                <p>Tienen un descuento</p>
                                <h3 class="card-title pricing-card-title">15%</h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentación</small>
                            </div>
                        </div>
                    </div>
                </div>

               
              <h2 class="titulo-gral">Venta <span>Valor de ticket $200</span></h2>
             
             
             
             
                
                <form action="comprar-ticket.html">
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <input type="text" name="nombre" value="<%= request.getParameter("nombre")%>" class="form-control" placeholder="Nombre" aria-label="Nombre" id="nombre" required>
                        </div>
                        <div class="col-md mb-3">
                            <input type="text" name="apellido" value="<%= request.getParameter("apellido")%>" class="form-control" placeholder="Apellido" aria-label="Apellido" id="apellido" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <input type="email" name="mail" value="<%= request.getParameter("mail")%>" class="form-control" placeholder="Email" aria-label="Email" id="mail" required>
                        </div>
                    </div>
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <label for="cantidadTickets" class="form-label">Cantidad</label>
                            <input type="number"  name="cantidad" value="<%= request.getParameter("cantidad")%>" class="form-control" placeholder="Cantidad" aria-label="Cantidad" id="cantidad" min="1" required>
                        </div>
                        <div class="col-md mb-3">
                            <label for="categoriaSelect" class="form-label">Categoría</label>
                            <select name="categoria" class="form-select" aria-label="Categoría" id="categoriaSelect">
                                <option value="<%= request.getParameter("categoria")%>" selected></option>
                                <option value="0">Sin Categoria</option>
                                <option value="1">Estudiante</option>
                                <option value="2">Trainee</option>
                                <option value="3">Junior</option>
                            </select>
                                                        
                        </div>
                    </div>
                    <div class="alert alert-primary mt-2 mb-4" role="alert">
                        Total a pagar: $ <span id="totalPago" class="align-middle"></span>
                    </div>
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <button  class="w-100 btn btn-lg btn-form" type="button" onclick="location.href='delete.jsp'" id="btnDelete">Borrar</button>
                        </div>
                        <div class="col-md mb-3">
                            <button class="w-100 btn btn-lg btn-form" type="button"  onclick="location.href='update.jsp'" id="btnUpdate">Modificar</button>
                        </div>
                        <div class="col-md mb-3">
                            <button class="w-100 btn btn-lg btn-form"  type="submit" id="btnConfirmar">Confirmar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>

</main>

<footer id="main-footer">
    <div class="container">
        <ul class="nav justify-content-center justify-content-lg-between align-items-center">
            <li class="nav-item">
                <a class="nav-link" href="#">Preguntas <span>frecuentes</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contáctanos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Prensa</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Conferencias</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Términos y <span>condiciones</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Privacidad</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Estudiantes</a>
            </li>
        </ul>
    </div>
</footer>

<script src="js/comprar-tickets.js"></script>


</body>
</html>