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
    <title>Product Details</title>
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
    
    <form id="productForm" method="post" action="addProduct" enctype="multipart/form-data">
    <section id="prodetails" class="section-p1" data-id="1" style="display: none;">
        <div class="single-pro-image">
            <img id="image" src="images/guitar1.jpg" width="100%" id="MainImg" alt="Main Product Image">
            <input type="hidden" name="image" value="images/guitar1.jpg">
            <div class="small-img-group">
                <div class="small-img-col">
                    <img src="images/guitar1.jpg" width="100%" class="small-img" alt="Small Image 1">
                </div>
                <div class="small-img-col">
                    <img src="images/guitar2.jpg" width="100%" class="small-img" alt="Small Image 2">
                </div>
                <div class="small-img-col">
                    <img src="images/guitar5.jpg" width="100%" class="small-img" alt="Small Image 3">
                </div>
            </div>
        </div> 

        <div class="single-pro-details">
            <h6>Browse Instruments / Guitar</h6>
            <h4 id="item">Takamine GC1CE-NAT Semi Acoustic Guitar</h4>
            <input type="hidden" name="item" value="Takamine GC1CE-NAT Semi Acoustic Guitar">
            <h2 id="price">124,000.00 LKR</h2>
            <input type="hidden" name="price" value="124,000.00 LKR">
            <label for="colorSelect">Select Color</label>
            <select name="color" id="colorSelect" required >
                <option value="" disabled selected>Select Color</option>
                <option>Yellow</option>
                <option>Black</option>
                <option>Brown</option>
            </select>
            <label for="quantityInput">Quantity:</label>
            <input name="quantity" type="number" id="quantityInput"  value="1" min="1" max="10" required >
            <div class="action-buttons">
                <button class="buy-now" name="">Buy Now</button>
                <button class="add-to-cart" name="">Add To Cart</button>
            </div>
            <h4>Product Details</h4>
            <p>
                TIM'S ORIGINAL ICONIC GUITAR: The Tim Armstrong Hellcat is based on Armstrong's own
                classic instrument, with modern appointments including high-quality onboard electronics.
                SOLID MAHOGANY TOP & SATIN-FINISH MAPLE NECK: A great guitar for pop, rock, folk, and more,
                it has a solid mahogany top for especially sweet sound and a satin-finish maple neck for
                smooth playability.
            </p>
        </div>
    </section>
    </form>
    
    <form id="productForm" method="post" action="addProduct" enctype="multipart/form-data">
    <section id="prodetails" class="section-p1" data-id="2" style="display: none;">
        <div class="single-pro-image">
            <img id="image" src="images/keyboard3.jpg" width="100%" id="MainImg" alt="Yamaha PSS-F30 Mini-key Portable Keyboard">
            <input type="hidden" name="image" value="images/keyboard3.jpg">
        </div>

        <div class="single-pro-details">
            <h6>Browse Instruments / Keyboard</h6>
            <h4 id="item">Yamaha PSS-F30 Mini-key Portable Keyboard</h4>
            <input type="hidden" id="hiddenItem" name="item" value="Yamaha PSS-F30 Mini-key Portable Keyboard">
            <h2 id="price">21,700.00 LKR</h2>
            <input type="hidden" name="price" value="21,700.00 LKR">
            <label for="colorSelect">Select Color</label>
            <select name="color" id="colorSelect" required>
                <option value="" disabled selected>Select Color</option>
                <option>Black</option>
            </select>
            <label for="quantityInput">Quantity:</label>
            <input name="quantity" type="number" id="quantityInput"  value="1" min="1" max="10" required>
            <div class="action-buttons">
                <button class="buy-now">Buy Now</button>
                <button class="add-to-cart" >Add To Cart</button>
            </div>
            <h4>Product Details</h4>
            <p>
                Control Interface – Keyboard – Number of Keys: 61
Control Interface – Type: Organ (FSB), Initial Touch
Control Interface – Touch Response: Normal, Soft 1, Soft 2, Hard 1, Hard 2
Control Interface – Other Controllers – Joystick: Yes
Control Interface – Other Controllers – Control Knobs: 2 (assignable)
            </p>
        </div>
    </section>
    </form>
    
    <form id="productForm" method="post" action="addProduct" enctype="multipart/form-data">
    <section id="prodetails" class="section-p1" data-id="3" style="display: none;">
        <div class="single-pro-image">
            <img id="image" src="images/speaker.png" width="100%" id="MainImg" alt="Electro Voice ELX200-10P 10 Powered Speaker">
            <input type="hidden" name="image" value="images/speaker.png">
        </div>
        <div class="single-pro-details">
            <h6>Browse Instruments / Speaker</h6>
            <h4 id="item">Electro Voice ELX200-10P 10 Powered Speaker</h4>
            <input type="hidden" name="item" value="Electro Voice ELX200-10P 10 Powered Speaker">
            <h2 id="price">272,000.00 LKR</h2>
            <input type="hidden" name="price" value="272,000.00 LKR">
            <label for="colorSelect">Select Color</label>
            <select name="color" id="colorSelect" required>
                <option value="" disabled selected>Select Color</option>
                <option>Black</option>
            </select>
            <label for="quantityInput">Quantity:</label>
            <input name="quantity" type="number" id="quantityInput"  value="1" min="1" max="10" required>
            <div class="action-buttons">
                <button class="buy-now">Buy Now</button>
                <button class="add-to-cart">Add To Cart</button>
            </div>
            <h4>Product Details</h4>
            <p>
                Audio Recorder/Player – Recording: .wav (WAV format: 44.1 kHz sample rate, 16 bit resolution, stereo), 
                .mp3 (44.1 kHz sample rate,128/256/320 kbps, mono/stereo)
Audio Recorder/Player – Playback: wav (WAV format: 44.1 kHz sample rate, 16 bit resolution, stereo), 
.mp3 (MPEG-1 Audio Layer-3: 44.1/48.0 kHz sample rate, 64-320 kbps and variable bit rate, mono/stereo)
            </p>
        </div>
    </section>
    </form>
    
    <form id="productForm" method="post" action="addProduct" enctype="multipart/form-data">
    <section id="prodetails" class="section-p1" data-id="4" style="display: none;">
        <div class="single-pro-image">
            <img id="image" src="images/keyboard1.jpg" width="100%" id="MainImg" alt="Yamaha PSRE-273 Series Portable Keyboard">
            <input type="hidden" name="image" value="images/speaker.png">
        </div>
        <div class="single-pro-details">
            <h6>Browse Instruments / Keyboard</h6>
            <h4 id="item">Yamaha PSRE-273 Series Portable Keyboard</h4>
            <input type="hidden" name="item" value="Yamaha PSRE-273 Series Portable Keyboard">
            <h2 id="price">58,500.00 LKR</h2>
            <input type="hidden" name="price" value="58,500.00 LKR">
            <label for="colorSelect">Select Color</label>
            <select name="color" id="colorSelect" required>
                <option value="" disabled selected>Select Color</option>
                <option>Black</option>
            </select>
            <label for="quantityInput">Quantity:</label>
            <input name="quantity" type="number" id="quantityInput"  value="1" min="1" max="10" required>
            <div class="action-buttons">
                <button class="buy-now">Buy Now</button>
                <button class="add-to-cart" >Add To Cart</button>
            </div>
            <h4>Product Details</h4>
            <p>
                N-AUDIO MIDITEC Upgraded High-quality Portable Electric Piano Keyboard for Musicologist with MIDI Feature

Brand Name – N-AUDIO MIDITEC
Demo – 100 Songs
Connecting Devices - Phone Mobile, Computer, Tablet PC
            </p>
        </div>
    </section>
    </form>
    
    <form id="productForm" method="post" action="addProduct" enctype="multipart/form-data">
    <section id="prodetails" class="section-p1" data-id="5" style="display: none;">
        <div class="single-pro-image">
            <img id="image" src="images/bell.jpg" width="100%" id="MainImg" alt="Sabian AA 12-Mini Holy China - 21216CS">
            <input type="hidden" name="image" value="images/bell.jpg">
        </div>
        <div class="single-pro-details">
            <h6>Browse Instruments / Holy </h6>
            <h4 id="item">Sabian AA 12-Mini Holy China - 21216CS</h4>
            <input type="hidden" name="item" value="Sabian AA 12-Mini Holy China - 21216CS">
            <h2 id="price">37,000.00 LKR</h2>
            <input type="hidden" name="price" value="37,000.00 LKR">
            <label for="colorSelect">Select Color</label>
            <select name="color" id="colorSelect" required>
                <option value="" disabled selected>Select Color</option>
                <option>Gold</option>
            </select>
            <label for="quantityInput">Quantity:</label>
            <input name="quantity" type="number" id="quantityInput"  value="1" min="1" max="10" required>
            <div class="action-buttons">
                <button class="buy-now">Buy Now</button>
                <button class="add-to-cart">Add To Cart</button>
            </div>
            <h4>Product Details</h4>
            <p>
                Handpan 22 inch 12 Note D Minor Kurd Handpan Drum for Professional Performance
                 with Soft Hand Pan Bag, 2 Handpan mallet, Handpan Stand, Dust-free cloth (Ash-gold)
            </p>
        </div>
    </section>
    </form>
    
    <form id="productForm" method="post" action="addProduct" enctype="multipart/form-data">
    <section id="prodetails" class="section-p1" data-id="6" style="display: none;">
        <div class="single-pro-image">
            <img id="image" src="images/guitar3.jpg" width="100%" id="MainImg" alt="Main Product Image">
            <input type="hidden" name="image" value="images/guitar3.jpg">
            <div class="small-img-group">
                <div class="small-img-col">
                    <img src="images/guitar3.jpg" width="100%" class="small-img" alt="Small Image 1">
                </div>
                <div class="small-img-col">
                    <img src="images/aria2.jpg" width="100%" class="small-img" alt="Small Image 2">
                </div>
                <div class="small-img-col">
                    <img src="images/aria3.jpg" width="100%" class="small-img" alt="Small Image 3">
                </div>
            </div>
        </div>
        <div class="single-pro-details">
            <h6>Browse Instruments / Guitar</h6>
            <h4 id="item">Aria Pro A-35CE Classical Handled Guitar</h4>
            <input type="hidden" name="item" value="Aria Pro A-35CE Classical Handled Guitar">
            <h2 id="price">72,000.00 LKR</h2>
            <input type="hidden" name="price" value="72,000.00 LKR">
            <label for="colorSelect">Select Color</label>
            <select name="color" id="colorSelect" required>
                <option value="" disabled selected>Select Color</option>
                <option>Brown</option>
                <option>Yellow</option>
                <option>White</option>
            </select>
            <label for="quantityInput">Quantity:</label>
            <input name="quantity" type="number" id="quantityInput"  value="1" min="1" max="10" required>
            <div class="action-buttons">
                <button class="buy-now">Buy Now</button>
                <button class="add-to-cart">Add To Cart</button>
            </div>
            <h4>Product Details</h4>
            <p>
                 Designed to fit most clarinets, this mouthpiece is made from durable materials that ensure long-lasting performance. 
                 Its precision design allows for a clear and focused sound,
                  making it perfect for both beginners and professionals.IDEAL FOR A VARIETY OF MUSIC GENRES - These reeds are ideal
                   for jazz, classical, and other styles of music, allowing for clarity and projection in any venue.
D’ADDARIO WOODWINDS – Rico has been synonymous with quality reeds.
            </p>
        </div>
    </section>
    </form>
    
    <form id="productForm" method="post" action="addProduct" enctype="multipart/form-data">
    <section id="prodetails" class="section-p1" data-id="7" style="display: none;">
        <div class="single-pro-image">
            <img id="image" src="images/drum.jpg" width="100%" id="MainImg" alt="Evans EC2 Clear Bass Batter Drumhead">
            <input type="hidden" name="image" value="images/drum.jpg">
        </div>
        <div class="single-pro-details">
            <h6>Browse Instruments / Drumhead</h6>
            <h4 id="item">Evans EC2 Clear Bass Batter Drumhead - 10 inch</h4>
            <input type="hidden" name="item" value="Evans EC2 Clear Bass Batter Drumhead - 10 inch">
            <h2 id="price">8,750.00 LKR</h2>
            <input type="hidden" name="price" value="8,750.00 LKR">
            <label for="colorSelect">Select Color</label>
            <select name="color" id="colorSelect" required>
                <option value="" disabled selected>Select Color</option>
                <option>White</option>
            </select>
            <label for="quantityInput">Quantity:</label>
            <input name="quantity" type="number" id="quantityInput"  value="1" min="1" max="10" required>
            <div class="action-buttons">
                <button class="buy-now">Buy Now</button>
                <button class="add-to-cart">Add To Cart</button>
            </div>
            <h4>Product Details</h4>
            <p>
                The 4C model is a popular choice among clarinet players, known for its versatility and ease of use. 
                Whether you're playing in a band or orchestra, 
                this mouthpiece will help you achieve the perfect tone and sound.
            </p>
        </div>
    </section>
    </form>
    
    <form id="productForm" method="post" action="addProduct" enctype="multipart/form-data">
    <section id="prodetails" class="section-p1" data-id="8" style="display: none;">
        <div class="single-pro-image">
            <img id="image" src="images/sticks.jpg" width="100%" id="MainImg" alt="Vic Firth  Nylon Drumsticks">
            <input type="hidden" name="image" value="images/sticks.jpg">
        </div>
        <div class="single-pro-details">
            <h6>Browse Instruments / Drumsticks</h6>
            <h4 id="item">Vic Firth American Classic 7AN Nylon Drumsticks</h4>
            <input type="hidden" name="item" value="Vic Firth American Classic 7AN Nylon Drumsticks">
            <h2 id="price">2,500.00 LKR</h2>
            <input type="hidden" name="price" value="2,500.00 LKR">
            <label for="colorSelect">Select Color</label>
            <select name="color" id="colorSelect" required>
                <option value="" disabled selected>Select Color</option>
                <option>White</option>
            </select>
            <label for="quantityInput">Quantity:</label>
            <input name="quantity" type="number" id="quantityInput"  value="1" min="1" max="10" required>
            <div class="action-buttons">
                <button class="buy-now">Buy Now</button>
                <button class="add-to-cart">Add To Cart</button>
            </div>
            <h4>Product Details</h4>
            <p>
                THINNER PROFILE, STRONG SPINE - Royal reeds are
                 filed and feature a thinner profile and blank with
                  a stronger spine. Ideal for students and advancing players.
PREMIUM CANE FOR BETTER TONE - Royal reeds are made from premium cane for 
consistent response and playability.
            </p>
        </div>
    </section>
    </form>
    
    <form id="productForm" method="post" action="addProduct" enctype="multipart/form-data">
    <section id="prodetails" class="section-p1" data-id="9" style="display: none;">
        <div class="single-pro-image">
            <img id="image" src="images/ukulele.jpg" width="100%" id="MainImg" alt="Kadence 23″ Concert Summer Collection of Ukuleles">
            <input type="hidden" name="image" value="images/ukulele.jpg">
            <div class="small-img-group">
                <div class="small-img-col">
                    <img src="images/ukulele.jpg" width="100%" class="small-img" alt="Kadence Ukuleles 1">
                </div>
                <div class="small-img-col">
                    <img src="images/ukulele2.jpg" width="100%" class="small-img" alt="Kadence Ukuleles 1">
                </div>
                <div class="small-img-col">
                    <img src="images/ukule3.jpg" width="100%" class="small-img" alt="Kadence Ukuleles 1">
                </div>
            </div>
        </div>
        <div class="single-pro-details">
            <h6>Browse Instruments / Ukuleles</h6>
            <h4 id="item">Kadence 23 Concert Summer Collection of Ukuleles</h4>
            <input type="hidden" name="item" value="Kadence 23 Concert Summer Collection of Ukuleles">
            <h2 id="price">54,000.00 LKR</h2>
            <input type="hidden" name="price" value="54,000.00 LKR">
            <label for="colorSelect">Select Color</label>
            <select name="color" id="colorSelect" required>
                <option value="" disabled selected>Select Color</option>
                <option>Black</option>
                <option>Brown</option>
                <option>Maroon</option>
            </select>
            <label for="quantityInput">Quantity:</label>
            <input name="quantity" type="number" id="quantityInput"  value="1" min="1" max="10" required>
            <div class="action-buttons">
                <button class="buy-now">Buy Now</button>
                <button class="add-to-cart">Add To Cart</button>
            </div>
            <h4>Product Details</h4>
            <p>
                IDEAL FOR A VARIETY OF MUSIC GENRES - These reeds are
                 ideal for jazz, classical, and other styles of music,
                 allowing for clarity and projection in any venue.
D’ADDARIO WOODWINDS – Rico has been synonymous with quality reeds. 
Now part of the D’Addario family of musical instruments and 
accessories, D’Addario Woodwinds has revamped
 the reed-making process to create the most consistent reed in the world.
            </p>
        </div>
    </section>
    </form>

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
    
<script>

document.addEventListener('DOMContentLoaded', function () {
    
    const productSections = document.querySelectorAll('section#prodetails');

    
    productSections.forEach(section => {
        
        const mainImg = section.querySelector('.single-pro-image img');
        
        
        const smallImages = section.querySelectorAll('.small-img');

        
        smallImages.forEach(smallImg => {
            smallImg.addEventListener('click', function () {
                
                mainImg.src = smallImg.src;
            });
        });
    });
});



document.addEventListener('DOMContentLoaded', function () {
    
    const urlParams = new URLSearchParams(window.location.search);
    const productId = urlParams.get('id');

    
    const productSections = document.querySelectorAll('section#prodetails');

    
    productSections.forEach(section => {
        if (section.getAttribute('data-id') !== productId) {
            section.style.display = 'none'; 
        } else {
            section.style.display = ''; 
        }
    });
});


document.getElementById('hiddenItem').value = document.getElementById('item').innerText;
document.getElementById('hiddenPrice').value = document.getElementById('price').innerText;


document.querySelector('form').addEventListener('submit', function(event) {
    var colorSelect = document.getElementById('colorSelect');
    if (!colorSelect.value) {
        alert("Please select a color.");
        event.preventDefault(); 
    }
});


</script>

</body>

</html>