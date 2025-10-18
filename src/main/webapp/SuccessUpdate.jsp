<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #B2B2B2; /* Light gray background */
            color: #333; /* Dark text for contrast */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
        }

        .container {
            background-color: white; /* White container for clarity */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            max-width: 400px; /* Limit width for better readability */
            margin: 20px;
        }

        h1 {
            font-size: 2.2em;
            margin-bottom: 20px;
            color: #4caf50; /* Green for success */
        }

        p {
            font-size: 1.1em;
            margin-bottom: 30px;
            line-height: 1.5; /* Improve readability */
        }

        .button {
            background-color: #007bff; /* Blue button */
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1.2em;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Remove underline from link */
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .footer {
            margin-top: 20px;
            font-size: 0.9em;
            color: #777; /* Gray for footer text */
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Update Successful!</h1>
        <p>Your information has been updated successfully.</p>
        <a href="your_redirect_link_here" class="button">Go Back</a>
        <div class="footer">Thank you for using our service!</div>
    </div>

</body>
</html>
    