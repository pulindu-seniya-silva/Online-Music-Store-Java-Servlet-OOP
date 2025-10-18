<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Log in</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>

<input type="hidden" id="status" value="<%= (request.getAttribute("status") != null) ? request.getAttribute("status") : "" %>">

<div class="main">
    <section class="sign-in">
        <div class="container">
            <div class="signin-content">
                <div class="signin-image">
                    <figure>
                        <img src="images/signin-image.jpg" alt="sign in image">
                    </figure>
                    <a href="registration.jsp" class="signup-image-link">Create an account</a>
                </div>

                <div class="signin-form">
                    <h2 class="form-title">Log in</h2>
                    <form method="post" action="login" class="register-form" id="login-form">
                        <div class="form-group">
                            <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="username" id="username" placeholder="Your Email" required />
                        </div>
                        <div class="form-group">
                            <label for="password"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="password" id="password" placeholder="Password" required />
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                            <label for="remember-me" class="label-agree-term">
                                <span><span></span></span>Remember me
                            </label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signin" id="signin" class="form-submit" value="Log in" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        var statusElement = document.getElementById('status');
        if (statusElement) {
            var status = statusElement.value.trim();
            if (status === "failed") {
                swal("Sorry", "Wrong username or password", "error");
            }
        }
    });
</script>

</body>
</html>
