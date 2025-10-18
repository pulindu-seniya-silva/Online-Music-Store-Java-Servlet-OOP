<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/browse.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Browse Instruments</title>
</head>

<body>
    <header>
        <div class="header">
            <div class="logo">
                <img width="150" height = "140"  src="images/logo.png" alt="" >
                <h3><img width="220" height = "100" src="images/header.png" alt=""></h3>
            </div>
                <div class="search-box">
                    <input class="search" type="text" placeholder="Search for instruments, categories...">
                    <button class="search-btn"><i class="fas fa-search"></i></button>
                </div>
                <div class="profile">
                    <img width="20" src="images/bell.png" alt="">
                    <h4>User_1017</h4>
                    <img width="35" src="images/user.png" alt="">
                </div>  
            </div>
        <nav>
            <ul class="nav-links">
                <li class = "li"><a class="nav-item" href="Homepage.jsp">Home</a></li>
                <li class = "li"><a class="nav-item" href="">Browse Instruments</a></li>
                <li class = "li"><a class="nav-item" href="InquirySubmission.jsp">inquiry Submission</a></li>
                <li class = "li"><a class="nav-item" href="login.jsp">User Profile</a></li>
                <li class = "li"><a class="nav-item" href="cart.jsp">Cart</a></li>
                <li class = "li"><a class="nav-item" href="">Contact Us</a></li>
                <li class = "li"><a class="nav-item" href="">About Us</a></li>
            </ul>   	
        </nav>
    </header>
    
    <section id="page-header">
        <h2>#Choice Day </h2>
        <p>Save more with coupons & up to <span>40% off!</span></p>
    </section>

    <section id="product1" class="section-p1">
        <h2>New Arrivals</h2>
        <p>Fast Moving Products Collection</p>
        <div class="pro-container">
            <div class="pro" onclick="window.location.href='pdetails.jsp?id=1';" data-id="1">
                <img src="images/guitar1.jpg" alt="Takamine GC1CE-NAT Semi Acoustic Guitar">
                   <div class="des">
                    <span>Takamine</span>
                    <h5>Takamine GC1CE-NAT Semi Acoustic Guitar</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>124,000.00 LKR</h4>
                   </div> 
                   <!-- <a href="#"><i class="fa fa-cart-arrow-down cart" ></i></a> -->
            </div>
            <div class="pro" onclick="window.location.href='pdetails.jsp?id=2';" data-id="2">
                <img src="images/keyboard3.jpg" alt="Yamaha PSS-F30 Mini-key Portable Keyboard">
                   <div class="des">
                    <span>Yamaha</span>
                    <h5>
                        Yamaha PSS-F30 Mini-key Portable Keyboard</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>21,700.00 LKR</h4>
                   </div> 
                   <!-- <a href="#"><i class="fa fa-cart-arrow-down cart" ></i></a> -->
            </div>
            <div class="pro" onclick="window.location.href='pdetails.jsp?id=3';" data-id="3">
                <img src="images/speaker.png" alt="Electro Voice ELX200-10P 10\ Powered Speaker">
                   <div class="des">
                    <span>Electrovoice</span>
                    <h5>Electro Voice ELX200-10P 10" Powered Speaker</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>272,000.00 LKR</h4>
                   </div> 
                   <!-- <a href="#"><i class="fa fa-cart-arrow-down cart" ></i></a> -->
            </div>
            <div class="pro" onclick="window.location.href='pdetails.jsp?id=4';" data-id="4">
                <img src="images/keyboard1.jpg" alt="Yamaha PSRE-273 Series Portable Keyboard">
                   <div class="des">
                    <span>Yamaha</span>
                    <h5>Yamaha PSRE-273 Series Portable Keyboard</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>58,500.00 LKR</h4>
                   </div> 
                   <!-- <a href="#"><i class="fa fa-cart-arrow-down cart"></i></a> -->
            </div>
            <div class="pro" onclick="window.location.href='pdetails.jsp?id=5';" data-id="5">
                <img src="images/bell.jpg" alt="Sabian AA 12-Mini Holy China - 21216CS">
                   <div class="des">
                    <span>Sabian</span>
                    <h5>Sabian AA 12" Mini Holy China - 21216CS</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>37,000.00 LKR</h4>
                   </div> 
                   <!-- <a href="#"><i class="fa fa-cart-arrow-down cart" ></i></a> -->
            </div>
            <div class="pro" onclick="window.location.href='pdetails.jsp?id=6';" data-id="6">
                <img src="images/guitar3.jpg" alt="Aria Pro A-35CE Classical Handled Guitar">
                   <div class="des">
                    <span>Aria Pro</span>
                    <h5>Aria Pro A-35CE Classical Handled Guitar</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>72,000.00 LKR</h4>
                   </div> 
                   <!-- <a href="#"><i class="fa fa-cart-arrow-down cart" ></i></a> -->
            </div>
            <div class="pro" onclick="window.location.href='pdetails.jsp?id=7';" data-id="7">
                <img src="images/drum.jpg" alt="Evans EC2 Clear Bass Batter Drumhead - 10 inch">
                   <div class="des">
                    <span>Evans</span>
                    <h5>Evans EC2 Clear Bass Batter Drumhead - 10 inch</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>8,750.00 LKR</h4>
                   </div> 
                   <!-- <a href="#"><i class="fa fa-cart-arrow-down cart" ></i></a> -->
            </div>
            <div class="pro" onclick="window.location.href='pdetails.jsp?id=8';" data-id="8">
                <img src="images/sticks.jpg" alt="Vic Firth American Classic 7AN Nylon Drumsticks">
                   <div class="des">
                    <span>Vicfrith</span>
                    <h5>Vic Firth American Classic 7AN Nylon Drumsticks</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>2,500.00 LKR</h4>
                   </div> 
                   <!-- <a href="#"><i class="fa fa-cart-arrow-down cart"></i></a> -->
            </div>
            <div class="pro" onclick="window.location.href='pdetails.jsp?id=9';" data-id="9">
                <img src="images/ukulele.jpg" alt="Kadence 23″ Concert Summer Collection of Ukuleles">
                   <div class="des">
                    <span>Kadence</span>
                    <h5>Kadence 23 Concert Summer Collection of Ukuleles (Black)</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>54,000.00 LKR</h4>
                   </div> 
                   <!-- <a href="#"><i class="fa fa-cart-arrow-down cart" ></i></a> -->
            </div>
        </div>
    </section>

    <section id="pagination">
        <a href="#" class="active">1</a> 
        <a href="#">2</a> 
        <a href="#"><i class="fa fa-angle-double-right"></i></a>
    </section>

    <section id="banner">
        <h4>Repair Services</h4>
        <h2>Up to <span>50% Off</span> - All Music Instruments & Accessories</h2>
        <button class="normal">Explore More</button>
    </section>

    <footer class="footer">
        <div class="footer-nav">
            <img width="80" src="images/logo.png" alt="">
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
                    <img width="25" height="25" src="images/whatsapp.png" alt="">
                    <img width="25" height="25" src="images/twitter.png" alt="">
                    <img width="25" height="25" src="images/facebook.png" alt="">
                    <img width="25" height="25" src="images/youtube.png" alt="">
                    <img width="25" height="25" src="images/instagram.png" alt="">
                   
                </div>
                <button class="feedback-btn">Provide feedback for us</button>
            </div>
        </div>
        <p class="text-white text-small text-center m-t-200">Powered by PhotoRoom Copyright © 2024-2035 Online Products. All rights reserved.</p> 
    </footer>
    
    <script></script>

</body>

</html>    