<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles/home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Online music store</title>
</head>

<body>
    <header>
        <div class="header">
            <div class="logo">
                <img width="150" height = "140"  src="./img/logo.png" alt="" >
                <h3><img width="220" height = "100" src="./img/header.png" alt=""></h3>
            </div>
                <div class="search-box">
                    <input class="search" type="text" placeholder="Search for instruments, categories...">
                    <button class="search-btn"><i class="fas fa-search"></i></button>
                </div>
                <div class="profile">
                    <img width="20" src="./img/icons/bell.png" alt="">
                    <h4>User_1017</h4>
                    <img width="35" src="./img/icons/user.png" alt="">
                </div>  
            </div>
        <nav>
            <ul class="nav-links">
                <li class = "li"><a class="nav-item" href="Homepage.jsp">Home</a></li>
                <li class = "li"><a class="nav-item" href="browse.jsp">Browse Instruments</a></li>
                <li class = "li"><a class="nav-item" href="InquirySubmission.jsp">inquiry Submission</a></li>
                <li class = "li"><a class="nav-item" href="login.jsp">User Profile</a></li>
                <li class = "li"><a class="nav-item" href="">Contact Us</a></li>
                <li class = "li"><a class="nav-item" href="">About Us</a></li>
            </ul>   	
        </nav>
    </header>
    <script src="js/script.js"></script>
   <!-- Hero Section -->
<section class="hero">
    <div class="hero-content">
        <h2>Your One-Stop Shop for All Musical Instruments</h2>
        <p>Explore a wide variety of instruments for every musician.</p>
        <a href="#" class="cta-btn">Shop Now</a>
    </div>
</section>

<!-- Product Categories -->
<section class="categories">
    <div class="container">
        <h2>Explore Our Categories</h2>
        <div class="category-grid">
            <div class="category-card">
                <img src="img/Guitar.jpg" alt="Guitars" >
                <h3>Guitars</h3>
            </div>
            <div class="category-card">
                <img src="img/piano.jpg" alt="Pianos" width="1000" height="1000" >
                <h3>Pianos</h3>
            </div>
            <div class="category-card">
                <img src="img/violin.jpg" alt="Violins">
                <h3>Violins</h3>
            </div>
            <div class="category-card">
                <img src="img/drums3.jpg" alt="Drums">
                <h3>Drums</h3>
            </div>
        </div>
    </div>
</section>

          
    

    <footer class="footer">
        <div class="footer-nav">
            <img width="80" src="./img/logo.png" alt="">
            <ul class="nav-links1">
                <li><a class="nav-item text-white" href=""><u>Privacy and Terms of services</u></a></li>
                <li><a class="nav-item text-white" href=""><u>Subscribe Us</u></a></li>
                <li><a class="nav-item text-white" href=""><u>FAQs</u></a></li>
                <li><a class="nav-item text-white" href=""><u>About Us</u></a></li>
                <li><a class="nav-item text-white" href=""><u>Contact Us</u></a></li>
            </ul>
        </div>
        <div class="row justify-between">
            <div style="width: 350px;">
                <p class="text-white text-small"><i>Discover the world of music with us! We offer a wide range of instruments for all skill levels,
                     from beginners to professionals. Our goal is to provide you with quality instruments, excellent customer service, 
                     and a seamless shopping experience. Stay inspired and let the music flow!</i></p>
            </div>
            <div>
                <div class="row gap-10">
                    <img width="25" height="25" src="./img/icons/whatsapp.png" alt="">
                    <img width="25" height="25" src="./img/icons/twitter.png" alt="">
                    <img width="25" height="25" src="./img/icons/facebook.png" alt="">
                    <img width="25" height="25" src="./img/icons/youtube.png" alt="">
                    <img width="25" height="25" src="./img/icons/instagram.png" alt="">
                   
                </div>
                <button class="feedback-btn">Provide feedback for us</button>
            </div>
        </div>
        <p class="text-white text-small text-center m-t-200">Powered by PhotoRoom Copyright © 2024-2035 Online Products. All rights reserved.</p> 
    </footer>
</body>

</html>