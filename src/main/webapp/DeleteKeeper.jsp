<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="styles/UserProfile.css">
</head>
<body>

<%
	String id = request.getParameter("id");
    String username= request.getParameter("username");
	String password = request.getParameter("password");
	String available_Instrument_Types= request.getParameter("available_Instrument_Types");
	String available_Music_Brands = request.getParameter("available_Music_Brands");
	String email = request.getParameter("email");
	String phoneNumber = request.getParameter("phoneNumber");
	String store_name = request.getParameter("store_name");
	String available_time= request.getParameter("available_time");
%>

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

<div class="body-1">
            <div class="container">
                    <form action = "stk/delete" method = "post">
                     <p style="border: 2px solid white; background-color: #333; color:white; padding: 10px; margin-top: -20px; position: center; text-align:center; border-radius: 8px; font-size: 20px">Delete Your Account</p>
                        <div class="user-details">
                        <input type="hidden" name="id" value="<%= id %>">
                            <div class="input-box">
                                <span class="details">User Name</span>
                                <input rtype="text" readonly value="<%= username%>">
                            </div>
                            <div class="input-box">
                                <span class="details">Store Name</span>
                                <input type="text" readonly value= "<%= store_name%>"required>
                            </div>
                            <div class="input-box"><br>
                                <span class="details">available Instrument Types</span>
                                <input type="text"  readonly value= "<%= available_Instrument_Types%>"required>
                           </div>
                           <div class="input-box"><br>
                            <span class="details">Phone Number</span>
                            <input type="text"  readonly value="<%= phoneNumber %>" required>
                           </div>
                            <div class="input-box"><br>
                                <span class="details">available Music Brands</span>
                                <input type="text"  readonly value= "<%= available_Music_Brands %>" required>
                            </div>
                            <div class="input-box"><br>
                                <span class="details">First access to the site</span>
                                <input type="text" readonly value= "<%= email %>">
                            </div>
                            <div class="input-box"><br>
                                <span class="details">available Times</span>
                                <input type="text"  readonly value= "<%= available_time%>"  required>
                            </div>
                            <div class="input-box"><br>
                                <span class="details">Feedback Ratings</span>
                                <input type="text" readonly value= "4.1">
                            </div>   
                            <div style="text-align: center; width: 100%">
                            <input type = "submit" name ="submit" value = "Delete My Account" style="background-color: #4CAF50; color: white; border: none; padding: 12px 24px; font-size: 16px; border-radius: 8px; cursor: pointer; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); text-align: center;">      
                      		</div>
                        </div>
                     </div>
                    </form>
                </div>
</body>
</html>