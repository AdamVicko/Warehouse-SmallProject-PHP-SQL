
<!doctype html>
<html class="no-js" lang="en" dir="ltr">


  <head>
        <?php include_once 'head.php'; ?>
  </head>


<body>

  <div class="logo">
    <img src="/images/W_Logo.png" width="120" height="120" class="d-inline-block align-top"
    alt="W_Logo">
</div>

<h1>WareVic</h1>

<div class="main-wrapper">

    <form id="loginform">

        <h2>Login</h2>
        
        <div>
            <label>Email:</label>
            <input type="email" name="logi_email" id="login_email" placeholder="@">
        </div>

        <div>
            <label>Password:</label>
            <input type="password" name="login_password" id="login_password" placeholder="*********">
        </div>

        <div>
            <button id="loginbtn">Log in</button>
        </div>

    </form>

</div>

<div class="no-acc-register">
    <button id="registration">Register account</button>
</div>


<!--POP UP MODAL ZA REGISTRACIJU-->
<div class="custom-modal">

    <button id="closeModal">X</button>

    <form id="registration_form">

        <h2>Register User</h2>

        <div>
            <label for="user_name">User Name: *</label>
            <input type="text" name="register_user_name" id="register_user_name" placeholder="User Name">
        </div>

        <div>
            <label for="user_surname">User Surname: *</label>
            <input type="text" name="register_user_surname" id="register_user_surname" placeholder="User Surname">
        </div>

        <div>
            <label for="email">Email adress: *</label>
            <input type="text" name="register_email" id="register_email" placeholder="@">
        </div>

        <div>
            <label for="password">Password: *</label>
            <input type="password" name="register_password" id="register_password" placeholder="*********">
        </div>

        <div>
            <label for="repeate_password">Repeate Password: *</label>
            <input type="password" name="repeate_password" id="repeate_password" placeholder="*********">
        </div>

        <div>
            <button>Register Account</button>
        </div>
        
    </form>

</div>

<?php include_once 'scripts.php'; ?>
   
</body>
</html>
