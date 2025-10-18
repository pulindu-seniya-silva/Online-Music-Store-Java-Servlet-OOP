<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.music.servlets.shenuk.users.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Details</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <input type="hidden" id="status" value="<%= request.getAttribute("status") != null ? request.getAttribute("status") : "" %>">

    <div class="main">
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Update Details</h2>
                        <form method="post" action="update" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name" 
                                    value="<%= (session.getAttribute("name") != null) ? session.getAttribute("name") : "" %>" required />
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email" 
                                    value="<%= (session.getAttribute("email") != null) ? session.getAttribute("email") : "" %>" required readonly />
                                <!-- Email is typically not editable; set as readonly -->
                            </div>
                            <div class="form-group">
                                <label for="password"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="password" placeholder="New Password" />
                            </div>
                            <div class="form-group">
                                <label for="re_pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat New Password" />
                            </div>
                            <div class="form-group">
                                <label for="contact"><i class="zmdi zmdi-phone"></i></label>
                                <input type="text" name="contact" id="contact" placeholder="Contact No." 
                                    value="<%= (session.getAttribute("contact") != null) ? session.getAttribute("contact") : "" %>" required />
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="update" id="update" class="form-submit" value="Update" />
                                <button type="button" class="form-submit" onclick="goBack()">Back</button>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/update-image.jpg" alt="Update image"></figure>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">

    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function() {
            var statusElement = document.getElementById('status');
            if (statusElement) {
                var status = statusElement.value.trim();
                if (status === "success") {
                    swal("Success!", "Your details have been updated successfully!", "success");
                } else if (status === "failed") {
                    swal("Failed!", "Update failed. Please try again.", "error");
                } else if (status === "password_mismatch") {
                    swal("Error!", "Passwords do not match.", "error");
                } else if (status === "error") {
                    swal("Error!", "An unexpected error occurred. Please try again later.", "error");
                }
            }
        });

        function confirmDelete() {
            swal({
                title: "Are you sure?",
                text: "Once deleted, you will not be able to recover your account!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            }).then((willDelete) => {
                if (willDelete) {
                    document.getElementById("delete-form").submit();
                } else {
                    swal("Your account is safe!");
                }
            });
        }

        function goBack() {
            window.history.back();
        }
    </script>

</body>
</html>
