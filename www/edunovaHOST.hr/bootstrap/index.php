<!DOCTYPE html>
<html lang="en">

<head>
	<?php include_once 'head.php'; ?>
    <link rel="stylesheet" href="css/index.css">
</head>
<body>

    <div class="logo">
        <img src="img/W_logo.png">
    </div>

    <h1>WareVic</h1>

<div class="main-wrapper">

        <form id="loginform">

            <h2>Login</h2>
            
            <div>
                <label>Email:</label>
                <input type="email" name="email" id="login_email" placeholder="@">
            </div>

            <div>
                <label>Password:</label>
                <input type="password" name="lozinka" id="login_lozinka" placeholder="*********">
            </div>

            <div>
                <button id="loginbtn">Log in</button>
            </div>

        </form>

    </div>

    <div class="no-acc-register">
        <button id="registration">Register account</button>
        <hr>
    </div>


    <!--POP UP MODAL ZA REGISTRACIJU-->
    <div class="custom-modal">

        <button id="closeModal">X</button>

        <form id="registrationForm">

            <h2>Register User</h2>

            <div>
                <label>User Name: *</label>
                <input type="text" name="register_user_name" id="register_user_name" placeholder="User Name">
            </div>

            <div>
                <label>User Surname: *</label>
                <input type="text" name="register_user_surname" id="register_user_surname" placeholder="User Surname">
            </div>

            <div>
                <label>Email adress: *</label>
                <input type="text" name="register_email" id="register_email" placeholder="@">
            </div>

            <div>
                <label>Password: *</label>
                <input type="password" id="password" placeholder="**********">
            </div>

            <div>
                <label>Repeate Password: *</label>
                <input type="password" placeholder="**********">
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <button>Register Account</button>
                    </div>
                    <div class="col-6">
                        <button id="DEMO" >DEMO ENTER</button> <!--napravi da prebaci na homepage-->
                    </div>
                </div>
            </div>
        </form>
        
</div>
    
    <!--Footer-->
    <?php include_once 'footer.php'; ?>


    <?php include_once 'scripts.php'; ?>
    <script src="js/index.js"></script>

</body>

</html>
