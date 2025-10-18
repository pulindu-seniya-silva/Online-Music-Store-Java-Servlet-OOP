<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Deleted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da; /* Light red background */
            color: #721c24; /* Dark red text color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff; /* White background for the message box */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #d9534f; /* Bootstrap danger color */
            margin-bottom: 20px;
        }
        p {
            color: #856404; /* Dark yellow text for warning */
            margin-bottom: 30px;
        }
        .link-section {
            margin-top: 20px;
            color: #155724; /* Dark green for the suggestion text */
        }
        .link-section a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #007bff; /* Bootstrap primary color */
            color: white; /* White text for the button */
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .link-section a:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Permanently Deleted</h1>
        <p>Your account has been successfully deleted and cannot be recovered.</p>
        
        <div class="link-section">
            <p>What would you like to do next?</p>
            <a href="/music_store/registration.jsp">Sign Up</a>
            <a href="/music_store/login.jsp">Log In with Another Account</a>
            <a href="/music_store/browse.jsp">Browse Our Instruments as a Guest</a> <!-- Change to your desired browse page -->
        </div>
        
        <a href="/music_store/homepage.jsp">Return to Homepage</a> <!-- Change to your desired redirect page -->
    </div>
</body>
</html>
