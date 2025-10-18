<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Details</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/view.css">
</head>
<body>
    <input type="hidden" id="status" value="<%= request.getAttribute("status") != null ? request.getAttribute("status") : "" %>">

    <div class="main">
        <section class="profile">
            <div class="container">
                <div class="profile-content">
                    <div class="profile-details">
                        <h2 class="form-title">Profile Details</h2>
                        <div class="form-group">
                            <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <p><strong>Name:</strong> <%= (session.getAttribute("name") != null) ? session.getAttribute("name") : "N/A" %></p>
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="zmdi zmdi-email"></i></label>
                            <p><strong>Email:</strong> <%= (session.getAttribute("email") != null) ? session.getAttribute("email") : "N/A" %></p>
                        </div>
                        <div class="form-group">
                            <label for="contact"><i class="zmdi zmdi-phone"></i></label>
                            <p><strong>Contact No:</strong> <%= (session.getAttribute("contact") != null) ? session.getAttribute("contact") : "N/A" %></p>
                        </div>
                        <div class="form-group form-button">
                            <a href="update.jsp" class="form-submit">Edit Profile</a>
                        </div>
                        <form id="delete-form" action="delete" method="post" style="display:inline;">
  							  <input type="hidden" name="name" value="<%= session.getAttribute("name") != null ? session.getAttribute("name") : "" %>">
   							 <button type="button" class="form-submit" onclick="confirmDelete()">Delete Account</button>
						</form>

                    </div>
                </div>
                <div class="profile-image">
                    <figure><img src="images/update-image.jpg" alt="Update image"></figure>
                    <a href="login.jsp" class="update-image-link">Logout</a>
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
                    swal("Success", "Your account has been deleted successfully!", "success").then(() => {
                        window.location.href = "login.jsp"; 
                    });
                } else if (status === "failed") {
                    swal("Error", "Failed to delete the account. Please try again.", "error");
                } else if (status === "error") {
                    swal("Error", "An unexpected error occurred. Please try again later.", "error");
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
    </script>
</body>
</html>
