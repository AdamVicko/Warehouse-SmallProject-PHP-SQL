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
        <p>You don't have account?</p>
        <button id="registration">Register account</button>
    </div>


    <!--POP UP MODAL ZA REGISTRACIJU-->
    <div class="custom-modal">

        <button id="closeModal">X</button>

        <form id="registrationForm">

            <h2>Register User</h2>

            <div>
                <label for="korisnicko_ime">User Name: *</label>
                <input id="korisnicko_ime" type="text" name="korisnicko_ime" placeholder="UserName">
            </div>

            <div>
                <label for="drzava">Country: *</label>
                <input id="drzava" type="text" name="drzava" placeholder="Country Name">
            </div>

            <div>
                <label for="email">Email adress: *</label>
                <input id="email" type="text" name="register_email" placeholder="@">
            </div>

            <div>
                <label for="lozinka">Password: *</label>
                <input id="lozinka" type="password" name="register_lozinka" placeholder="*********">
            </div>

            <div>
                <label for="ponovi_lozinku">Repeate Password: *</label>
                <input id="ponovi_lozinku" type="password" name="ponovi_lozinku" placeholder="*********">
            </div>

            <div>
                <button>Register Account</button>
            </div>

            <div> 
                <button>DEMO ENTER</button> <!--napravi da prebaci na homepage-->
            </div>
            
        </form>

    </div>
    
    <?php include_once 'scripts.php'; ?>
    <script src="js/index.js"></script>

</body>

</html>
