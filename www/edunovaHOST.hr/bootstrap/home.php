<!DOCTYPE html>
<html lang="en">

<head>

    <?php include_once 'head.php'; ?>
    <link rel="stylesheet" href="css/home.css">
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

    <div class="container-fluid" id="maindio">

        <div class="row">

            <!--Lijevi vanjski-->
            <div class="col vanjski">
                    
                    <h5 class="text-center">Daily chores</h5>

                    <div class="card border-secondary input-group mb-3">
                        <div class="card-header">Daily delivery</div>
                        <div class="card-body input-group-text">
                            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            <textarea class="form-control" aria-label="Text input with checkbox"></textarea>
                        </div>
                        <div class="card-body input-group-text">
                            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            <textarea class="form-control" aria-label="Text input with checkbox"></textarea>
                        </div>
                        <div class="card-body input-group-text">
                            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            <textarea class="form-control" aria-label="Text input with checkbox"></textarea>
                        </div>
                        <div class="card-body input-group-text">
                            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            <textarea class="form-control" aria-label="Text input with checkbox"></textarea>
                        </div>
                    </div>
            
                    <div class="card border-secondary input-group mb-3">
                        <div class="card-header">Daily collection</div>
                        <div class="card-body input-group-text">
                            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            <textarea class="form-control" aria-label="Text input with checkbox"></textarea>
                        </div>
                        <div class="card-body input-group-text">
                            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            <textarea class="form-control" aria-label="Text input with checkbox"></textarea>
                        </div>
                        <div class="card-body input-group-text">
                            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            <textarea class="form-control" aria-label="Text input with checkbox"></textarea>
                        </div>
                        <div class="card-body input-group-text">
                            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            <textarea class="form-control" aria-label="Text input with checkbox"></textarea>
                        </div>
                    </div>
            </div>

            <!--Cijeli glavni dio sajta UNUTARNJI -->
            <div class="col-6 border-end border-start">


                <h3 class="tablename">Oxygen concentrator</h3>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name and Surname</th>
                            <th scope="col">Serial number</th>
                            <th scope="col">Date of delivery</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td><a href="patients.php">Mark Viduka</a></td>
                            <td><a href="oxygenconcentrator.php">L556879945</a></td>
                            <td><a href="perdate.php">05.11.2021</a></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td><a href="patients.php">Mark Viduka</a></td>
                            <td><a href="oxygenconcentrator.php">L556879945</td>
                            <td><a href="perdate.php">05.11.2021</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td><a href="patients.php">Mark Viduka</a></td>
                            <td><a href="oxygenconcentrator.php">L556879945</td>
                            <td><a href="perdate.php">05.11.2021</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td><a href="patients.php">Mark Viduka</a></td>
                            <td><a href="oxygenconcentrator.php">L556879945</td>
                            <td><a href="perdate.php">05.11.2021</td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td><a href="patients.php">Mark Viduka</a></td>
                            <td><a href="oxygenconcentrator.php">L556879945</td>
                            <td><a href="perdate.php">05.11.2021</td>
                        </tr>
                    </tbody>
                </table>
                
                <div>
                    <button id="add_patient_popup_btn">Add Patient</button>
                </div>

                <div class="custom2-modal">

                    <button id="close_custom2_modal">X</button>

                        <form id="add_patient">
                            <div>
                                <label>Name and Surname:</label>
                                <input type="text" name="register_patient_name" id="register_patient_name" placeholder="Name and Surname">
                            </div>

                            <div>
                                <label>Adress:</label>
                                <input type="text" name="register_patient_adress" id="register_patient_adress" placeholder="Adress">
                            </div>

                            <div>
                                <label>Phone:</label>
                                <input type="text" name="register_patient_phone" id="register_patient_phone" placeholder="09...">
                            </div>

                            <div>
                                <label>Serial Number:</label>
                                <input type="text" name="register_patient_serial_number" id="register_patient_serial_number" placeholder="OXYGEN">
                            </div>

                            <div>
                                <label>Date of delivery:</label>
                                <input type="date" name="delivery_date" id="delivery_date" placeholder="01.01.2000">
                            </div>

                            <div>
                                <label>Date of collection:</label>
                                <input type="date" name="collection_date" id="collection_date" placeholder="01.01.2000">
                            </div>

                            <div>
                                <label>Comment:</label>
                                <input type="text" name="comment" id="comment" placeholder="Comment">
                            </div>

                            <button id="confirm_patient">Confirm Patient</button>
                        </form>
                    
                </div>

            </div>

            <!--Desni vanjski-->
            <div class="col vanjski">

            </div>
            
        </div>


    

    </div>

    <!--Footer-->
    <?php include_once 'footer.php'; ?>

    <?php include_once 'scripts.php'; ?>
    <script src="js/home.js"></script>
</body>

</html>
