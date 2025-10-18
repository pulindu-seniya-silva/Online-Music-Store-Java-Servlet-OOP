<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    

<%@ page import="java.util.List" %>
<%@ page import="com.music.servlets.tharindu.services.CartDao" %>
<%@ page import="com.music.servlets.tharindu.model.Product" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/browse.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Cart</title>
</head>

<body>
    <header>
        <div class="header">
            <div class="logo">
                <img width="150" height="140" src="images/logo.png" alt="">
                <h3><img width="220" height="100" src="images/header.png" alt=""></h3>
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
                <li class="li"><a class="nav-item" href="">Home</a></li>
                <li class="li"><a class="nav-item" href="browse.jsp">Browse Instruments</a></li>
                <li class="li"><a class="nav-item" href="">Inquiry Submission</a></li>
                <li class="li"><a class="nav-item" href="">User Profile</a></li>
                <li class="li"><a class="nav-item" href="">Contact Us</a></li>
                <li class="li"><a class="nav-item" href="">About Us</a></li>
            </ul>   	
        </nav>
    </header>
    <section id="page-header">
        <h2>#Choice Day</h2>
        <p>Save more with coupons & up to <span>40% off!</span></p>
    </section>

    <section id="cart" class="section-p1">
        <table width="100%">
            <thead>
                <tr>
                    <td>Image</td>
                    <td>Product Name</td>
                    <td>Price</td>
                    <td>Color</td>
                    <td>Quantity</td>
                    <td>Action</td>
                </tr>
            </thead>
            <tbody>
                <%
                    CartDao cartDao = new CartDao();
                    List<Product> cartItems = cartDao.getCartItems();
                    if (cartItems.isEmpty()) {
                %>
                    <tr>
                        <td colspan="6">Your cart is empty.</td>
                    </tr>
                <%
                    } else {
                        for (Product product : cartItems) {
                %>
                    <tr>
                        <td>
                            <img src="data:image/png;base64,<%= java.util.Base64.getEncoder().encodeToString(product.getImage()) %>" style="width: 70px;" />
                        </td>
                        <td><%= product.getItem() %></td>
                        <td><%= product.getPrice() %></td>
                        <td><%= product.getColor() %></td>
                        <td>
                            <form action="updateQuantity" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="<%= product.getId() %>" />
                                <input type="number" name="quantity" value="<%= product.getQuantity() %>" min="1" max="10" required />
                                <input type="submit" value="Update" />
                            </form>
                        </td>
                        <td>
                            <form action="deleteItem" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="<%= product.getId() %>" />
                                <input type="submit" value="Delete" />
                            </form>
                        </td>
                    </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </section>
 
    <section id="cart-add" class="section-p1">
        <div id="subtotal"> 
           <h3>Subtotal: 
            <%
                double subtotal = 0.0;
                for (Product product : cartItems) {
                    
                    String priceString = product.getPrice();
                    
                    
                    priceString = priceString.replaceAll("[^\\d.]", ""); 
                    
                    
                    subtotal += Double.parseDouble(priceString) * product.getQuantity();
                }
            %>
            <%= subtotal %>
            </h3>
        </div>
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
