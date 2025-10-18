<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up</title>

    <!-- Include external font icon library for form icons -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Link to the main CSS stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Include external SweetAlert stylesheet for styling the alerts -->
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>

    <!-- Hidden input field to capture status from the server for alerts -->
    <input type="hidden" id="status" value="<%= request.getAttribute("status") != null ? request.getAttribute("status") : "" %>">

    <div class="main">
        <!-- Sign-up form section -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    
                    <!-- Sign-up form -->
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="post" action="register" class="register-form" id="register-form">
                            
                            <!-- Input for full name -->
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name" required />
                            </div>
                            
                            <!-- Input for email address -->
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email" required />
                            </div>
                            
                            <!-- Input for password -->
                            <div class="form-group">
                                <label for="password"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="password" placeholder="Password" required />
                            </div>
                            
                            <!-- Input to confirm password -->
                            <div class="form-group">
                                <label for="re_pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" required />
                            </div>
                            
                            <!-- Input for contact number -->
                            <div class="form-group">
                                <label for="contact"><i class="zmdi zmdi-phone"></i></label>
                                <input type="text" name="contact" id="contact" placeholder="Contact No." required />
                            </div>

                            <!-- Submit button to register the user -->
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                            </div>
                        </form>
                    </div>

                    <!-- Image and link for users who already have an account -->
                    <div class="signup-image">
                        <figure><img src="images/signup-image.png" alt="sign up image"></figure>
                        <a href="login.jsp" class="signup-image-link">I am already a member</a>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Include external jQuery library -->
    <script src="vendor/jquery/jquery.min.js"></script>
    
    <!-- Include external SweetAlert library for displaying pop-up alerts -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    <!-- JavaScript to handle status-based alerts after form submission -->
    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function() {
            // Get the status value set by the server after form submission
            var statusElement = document.getElementById('status');
            if (statusElement) {
                var status = statusElement.value.trim();

                // Display success alert if account creation is successful
                if (status === "success") {
                    swal("Congrats!", "Account has been created successfully.", "success");

                // Display error if email is already in use
                } else if (status === "email_used") {
                    swal("Error!", "The email address is already in use. Please use a different email.", "error");

                // Display error if passwords don't match
                } else if (status === "password_mismatch") {
                    swal("Error!", "The passwords do not match. Please try again.", "error");

                // Display error if contact number length is less than 10 digits
                } else if (status === "contact_length") {
                    swal("Error!", "The contact number must contain at least 10 digits.", "error");

                // Display error if password length is less than 8 characters
                } else if (status === "password_length") {
                    swal("Error!", "The password must be more than 8 characters.", "error");
                }
            }
        });
    </script>

</body>
</html>
