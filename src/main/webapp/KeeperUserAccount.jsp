<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var = "keeper" items = "${shopDetails}">

	
	<!--for update part-->
	<c:set var="id" value = "${keeper.id}"/>
	<c:set var="username" value = "${keeper.username}"/>
	<c:set var="password" value = "${keeper.password}"/>
	<c:set var="available_Instrument_Types" value = "${keeper.available_Instrument_Types}"/>
	<c:set var="available_Music_Brands" value = "${keeper.available_Music_Brands}"/>
	<c:set var="email" value = "${keeper.email}"/>
	<c:set var="phoneNumber" value = "${keeper.phoneNumber}"/>
	<c:set var="store_name" value = "${keeper.store_name}"/>
	<c:set var="available_time" value = "${keeper.available_time}"/>
	

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles/UserProfile.css">
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
                <li class = "li"><a class="nav-item" href="">Home</a></li>
                <li class = "li"><a class="nav-item" href="">Browse Instruments</a></li>
                <li class = "li"><a class="nav-item" href="">inquiry Submission</a></li>
                <li class = "li"><a class="nav-item" href="">User Profile</a></li>
                <li class = "li"><a class="nav-item" href="">Contact Us</a></li>
                <li class = "li"><a class="nav-item" href="">About Us</a></li>
            </ul>   	
        </nav>
    </header>
    <script src="js/script.js"></script>
    <section>
   <div class="container-1">
            <div class="main">
                <div class="topbar">
                    <a href="">Log out</a>
                    
                    <!-- pass the values using java -->
                      <!-- delete -->
					    <c:url value = "DeleteKeeper.jsp" var = "DeleteKeeper">
					    	<c:param name = "id" value = "${id}"/>
					    	<c:param name = "username" value = "${username}"/>
					    	<c:param name = "password" value = "${password}"/>
					    	<c:param name = "available_Instrument_Types" value = "${available_Instrument_Types}"/>
					    	<c:param name = "available_Music_Brands" value = "${available_Music_Brands}"/>
					    	<c:param name = "email" value = "${email}"/>
					    	<c:param name = "phoneNumber" value = "${phoneNumber}"/>
					    	<c:param name = "store_name" value = "${store_name }"/>
					    	<c:param name = "available_time" value = "${available_time}"/>
					    	
					    </c:url>
					    <a href = "${DeleteKeeper}"> Delete profile
					    </a>
                    
                    <!-- For Update page -->
                      <c:url value = "UpdateKeeper.jsp" var = "KeeperUpdate"> 
    						<c:param name = "id" value = "${id}"/>
					    	<c:param name = "username" value = "${username}"/>
					    	<c:param name = "password" value = "${password}"/>
					    	<c:param name = "available_Instrument_Types" value = "${available_Instrument_Types}"/>
					    	<c:param name = "available_Music_Brands" value = "${available_Music_Brands}"/>
					    	<c:param name = "email" value = "${email}"/>
					    	<c:param name = "phoneNumber" value = "${phoneNumber}"/>
					    	<c:param name = "store_name" value = "${store_name}"/>
					    	<c:param name = "available_time" value = "${available_time}"/>
    
 					  </c:url>
    
    		<a href = "${KeeperUpdate}"> Update Profile
    		</a>
                    <a href="">User Details</a>
                </div>
                <div class="col-md-4 mt-1">
                    <div class="card text-center sidebar">
                      <!--  <div src="card-body"> -->
                        <div classs="rounded-circle" >
                            <img src="img/icons/user.png" width="150" style="margin-top: 10px">
                        <div class="mt-3">
                            <h3>${keeper.username}</h3>
                        </div>
                    </div>
                </div>
              </div>
            </div>
        </div>
        <!--section 1 part-->
        <div class="body-1">
            <div class="container">
                    <form action = "#">
                        <div class="user-details">
                            <div class="input-box">
                                <span class="details">User Name</span>
                                <input rtype="text" readonly value="${keeper.username}">
                            </div>
                            <div class="input-box">
                                <span class="details">Store Name</span>
                                <input type="text"  value= "${keeper.store_name}"required>
                            </div>
                            <div class="input-box"><br>
                                <span class="details">available Instrument Types</span>
                                <input type="text" readonly value= "${keeper.available_Instrument_Types}"required>
                           </div>
                           <div class="input-box"><br>
                            <span class="details">Phone Number</span>
                            <input type="text" readonly value="${keeper.phoneNumber}" required>
                           </div>
                            <div class="input-box"><br>
                                <span class="details">available Music Brands</span>
                                <input type="text" readonly value= "${keeper.available_Music_Brands}" required>
                            </div>
                            <div class="input-box"><br>
                                <span class="details">First access to the site</span>
                                <input type="text" readonly value= "${keeper.email}">
                            </div>
                            <div class="input-box"><br>
                                <span class="details">available Times</span>
                                <input type="text" readonly value= "${keeper.available_time}" required>
                            </div>
                            <div class="input-box"><br>
                                <span class="details">Feedback Ratings</span>
                                <input type="text" readonly value= "4.1">
                            </div>         
                        </div>
                     </div>
                    </form>
                </div>
         </section>
            </div>
    
        </div>
        
    </section>
    
    
    </c:forEach>
 
 
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







