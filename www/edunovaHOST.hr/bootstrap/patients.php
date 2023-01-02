<!DOCTYPE html>
<html lang="en">
<head>
	<?php include_once 'head.php'; ?>
    <link rel="stylesheet" href="css/patients.css">
</head>

<body>
    
    <!--NAVBAR-->

    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-secondary">
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
                            <a class="nav-link" aria-current="page" href="home.php">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" href="#">Patients</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Warehouse status</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Oxygen Concentrator
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Delivery</a></li>
                                <li><a class="dropdown-item" href="#">Collection</a></li>
                                <hr>
                                <li><a class="dropdown-item" href="#">All transactions</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="cdate d-none d-lg-block" >
                    <?php
                        // Return current date from the remote server
                        $date = date('d-m-y');
                        echo $date;
                    ?>
                </div>
            </div>
            
        </nav>

    <!--MAIN DIO -->











    <!--Footer-->
    <?php include_once 'footer.php'; ?>

    <?php include_once 'scripts.php'; ?>
</body>
</html>