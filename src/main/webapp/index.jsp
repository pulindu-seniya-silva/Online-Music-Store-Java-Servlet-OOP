<%
    // Check if the user is logged in by verifying the session attribute "name"
    if (session.getAttribute("name") == null) {
        // If not logged in, redirect the user to the login page
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta information about the document -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Online music store homepage" />
    <meta name="author" content="Online Music Store Team" />
    <title>Home</title>
    
    <!-- Favicon for the website -->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    
    <!-- Import Font Awesome for icon usage -->
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
    
    <!-- Import Google fonts for custom typography -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    
    <!-- Link to external CSS for page styling (Bootstrap included) -->
    <link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    
    <!-- Navigation Bar: Fixed to the top of the page -->
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <!-- Brand name for the online music store -->
            <a class="navbar-brand" href="#page-top">Online Music Store</a>
            
            <!-- Button to toggle the navigation menu on small screens -->
            <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
                type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu <i class="fas fa-bars"></i>
            </button>
            
            <!-- Collapsible menu items for navigation -->
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <!-- Link to the update profile page -->
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded" href="update.jsp">Update Profile</a>
                    </li>
                    
                    <!-- Link to logout the user -->
                    <li class="nav-item mx-0 mx-lg-1">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp">Logout</a>
                    </li>
                    
                    <!-- Display the logged-in user's name as a navigation item -->
                    <li class="nav-item mx-0 mx-lg-1 bg-danger">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded" href="view.jsp">
                            <%= session.getAttribute("name") %>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
</body>
</html>
