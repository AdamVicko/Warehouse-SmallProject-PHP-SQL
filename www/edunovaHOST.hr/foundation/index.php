
<!doctype html>
<html class="no-js" lang="en" dir="ltr">


  <head>
        <?php include_once 'head.php'; ?>
        <link rel="stylesheet" href="css/index.css">
  </head>


<body id="indexbody">

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
            <button id="loginbtn" class="callout secondary" >Log in</button>
        </div>

    </form>

</div>

<div class="no-acc-register">
    <button id="registration" class="callout secondary" >Register account</button>
</div>


<!--POP UP MODAL ZA REGISTRACIJU-->
<div class="custom-modal">

    <button id="closeModal">X</button>

    <form data-abide novalidate id="registration_form">

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
            <label>Password: *

            <input type="password" id="password" placeholder="**********" aria-describedby="exampleHelpTextPassword" required>
            <span class="form-error">I'm required!</span>

            </label>
        </div>

        <div>
            <label >Repeate Password: *
            <input type="password" placeholder="**********" aria-describedby="exampleHelpText2" required pattern="alpha_numeric" data-equalto="password">
            <span class="form-error">Hey, passwords are supposed to match!</span>
            
        </label>
        </div>

        <div data-abide-error class="alert callout" style="display: none;">
            <p><i class="fi-alert"></i> There are some errors in your form.</p>
        </div>

        <div>
            <button class="callout secondary">Register Account</button>
        </div>
        
    </form>

</div>

    <?php include_once 'scripts.php'; ?>
    <script src="js/app.js"></script>
</body>
</html>
