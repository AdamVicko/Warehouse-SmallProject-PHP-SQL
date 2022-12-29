<!DOCTYPE html>
<html lang="en">

<head>

    <?php include_once 'head.php'; ?>
    <link rel="stylesheet" href="css/home.css">
</head>

<body>

    <!--NAVBAR-->
<div class="container ">
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
        <div class="container-fluid">
            <a class="navbar-brand" href="home.php">
                <img src="/images/W_Logo.png" width="30" height="30" class="d-inline-block align-top"
                    alt="VicWare Logo">
                    VicWare
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="home.php">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">Patients</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">Warehouse status</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Products
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="#">Oxygen Conentrator</a></li>
                            <li><a class="dropdown-item" href="#">Pulse Oximeter</a></li>
                            <hr>
                            <li><a class="dropdown-item" href="#">All products</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="cdate" >
                <?php
                    // Return current date from the remote server
                    $date = date('d-m-y');
                    echo $date;
                ?>
            </div>
        </div>
        
    </nav>

<!--MAIN DIO -->


        <div class="container kartice">

            <div class="card border-secondary mb-3" style="max-width: 18rem;">
                <div class="card-header">Header</div>
                <div class="card-body text-secondary">
                    <h5 class="card-title">Secondary card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>
        </div>


<!--FOOTER-->
    <footer>
        <div class="footer mt-auto text-center">
            <div class="container mt-5 pt-5 pb-5">
                <div id="fot" class="row align-items-start">
                    <div class="col">
                        WEB Servis: 093/883341
                            <br>
                            <br>
                        <a href="www.linkedin.com/in/adamvicko" class="text-decoration-none text-reset">LinkedIN: AdamVicko</a>
                            <br>
                            <br>
                        <a href="mailto:vickovic2203@gmail.com" class="text-decoration-none text-reset">E-mail: vickovic2203@gmail.com</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</div>

    <?php include_once 'scripts.php'; ?>
</body>

</html>
