<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="styles/InquirySubmission.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Online music store</title>
</head>

<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<header>
		<div class="header">
			<div class="logo">
				<img width="150" height="140" src="./img/logo.png" alt="">
				<h3>
					<img width="220" height="100" src="./img/header.png" alt="">
				</h3>
			</div>
			<div class="search-box">
				<input class="search" type="text"
					placeholder="Search for instruments, categories...">
				<button class="search-btn">
					<i class="fas fa-search"></i>
				</button>
			</div>
			<div class="profile">
				<img width="20" src="./img/icons/bell.png" alt="">
				<h4>User_1017</h4>
				<img width="35" src="./img/icons/user.png" alt="">
			</div>
		</div>
		<nav>
			<ul class="nav-links">
				<li class="li"><a class="nav-item" href="">Home</a></li>
				<li class="li"><a class="nav-item" href="">Browse
						Instruments</a></li>
				<li class="li"><a class="nav-item" href="">inquiry
						Submission</a></li>
				<li class="li"><a class="nav-item" href="">User Profile</a></li>
				<li class="li"><a class="nav-item" href="">Contact Us</a></li>
				<li class="li"><a class="nav-item" href="">About Us</a></li>
			</ul>
		</nav>
	</header>
	<script src="js/script.js"></script>
	<section>
		<div class="container">
			<div class="title">Inquiry Submission Form</div>
			<br>
			<div id="id-sub-topic" class="Sub-topic">Please fill out this
				form, and one of our representatives will promptly respond to you
				via email</div>
			<br>
			<form id="form" action="Inquiry" method="post" enctype="multipart/form-data">
				<div class="user-details">
					<div class="input-box">
						<span id="id-fullName" class="details">Full Name *</span> <input
							id="id-fullName-input" name="fullName" type="text"
							placeholder="Enter your Full Name" required>
					</div>
					<div class="input-box">
						<span id="id-subject" class="details">Subject *</span> <input
							id="id-subject-input" type="text" name="subject"
							placeholder="Enter your inquiry subject" required>
					</div>
					<div class="input-box">
						<br> <span id="id-registration" class="details">Order
							Number or Product Number</span> <input id="id-registration-input"
							type="text" name="OPNo"
							placeholder="Enter order Number or product Number" >
					</div>
					<div class="select-container">
						<span id="id-select-box" class="details-withbox">Select the
							most suitable option</span> <select name="inquiry" id="id-select-box2"
							class="select-box"><br>
						<br>
							<option value="0">Select an inquiry type</option>
							<option value="1">I have a question about product</option>
							<option value="2">I have a question about order</option>
							<option value="3">Shipping and Delivery Inquiry</option>
							<option value="3">Warranty and Repair Inquiry</option>
							<option value="4">other</option>
						</select>
					</div>
					<div class="input-box">
						<br> <span id="id-phoneNumber" class="details">Contact
							Number </span> <input id="id-phoneNumber-input" name="contactNo"
							type="text" placeholder="Enter your phone number" >
						<div class="error"></div>
					</div>
					<div class="input-box2">
						<br> <span id="id-textarea" class="details-message"
							id="id-message">Issues/message </span>
						<textarea id="id-textarea-input" rows="3" cols="45" name="message"
							placeholder="Describe your issue here" ></textarea>
						<div class="error"></div>
					</div>
					<div class="radio-button">
						<br> <span id="id-radio" class="details">Preferred
							Contact Method</span><br> 
							<input type="radio" id="id1-radio" name="radio-contact" value="0">
							<label for="html">Email</label><br>
						    <input type="radio" id="id2-radio" name="radio-contact" value="1">
					     	<label for="css">Phone call</label><br> <input type="radio"
							id="id3-radio" name="radio-contact" value="2"> 
							<label for="javascript">text message</label><br> <input
							type="radio" id="id4-radio" name="radio-contact" value="3"> <label
							for="html">social Media</label><br> <input type="radio"
							id="id5-radio" name="radio-contact" value="4"> <label
							for="html">Other</label>
					</div>
					<div class="input-box1">
						<br> <label class="details-file" for="myfile">Select
							files</label> <input type="file" id="myfile" name="myfile" multiple><br>
						<br>
						<div class="error"></div>
					</div>
					<div class="input-box">
						<br> <span id="id-email" class="details">Email </span> <input
							id="id-email-input" name="email" type="text"
							placeholder="Enter your Email" >
						<div class="error"></div>
					</div>
					<div class="check-box">
						<input type="checkbox" id="id-checkbox-input" name="Privacy"
							value="Bike" > <span id="id-checkbox"
							class="details-checkbox">Accept privacy policy and term </span>
						<div class="error"></div>
					</div>
				</div>
				<div class="button">
					<input type="submit" onclick="myFunction()" value="Submit">
				</div>
		</div>
		</form>
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
				<p class="text-white text-small">
					<i>Discover the world of music with us! We offer a wide range
						of instruments for all skill levels, from beginners to
						professionals. Our goal is to provide you with quality
						instruments, excellent customer service, and a seamless shopping
						experience. Stay inspired and let the music flow!</i>
				</p>
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
		<p class="text-white text-small text-center m-t-200">Powered by
			PhotoRoom Copyright © 2024-2035 Online Products. All rights reserved.</p>
	</footer>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
<script type="text/javascript"> 

var status = document.getElementById("status").value;
if(status == "success") {
	swal("Successfully", "Your inquiry has been received. You will receive a reply soon.", "success");
}

</script>


</body>

</html>
