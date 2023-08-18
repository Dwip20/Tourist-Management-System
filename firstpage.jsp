
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>firstpage</title>
<link rel="stylesheet" href="firstpage.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%
/*String user="pqr";
session.setAttribute("userid",user);*/ 
%>
<div class="main">
        <div class="navbar">
            <div class="icon">
                <img src="TOCLOGO.png" alt="Icon" style="width:80%; ">
            </div>
            <div class="menu">
                <ul>
                    <li><a href="#"><i class="fa fa-home"></i>HOME</a></li>
                    <li><a href="aboutus.jsp"><i class="fa fa-user"></i>ABOUT</a></li>
                    <li><a href="#"><i class="fa fa-clone"></i>FACILITIES</a>
                    	<div class="sub-menu-1">
                    		<ul>
                    			<li><a href="facilities.jsp"target="_blank">Book a Tour</a></li>
                    			<li><a href="update.jsp"target="_blank">Edit Tour</a></li>
                    			<li><a href="view_details2.jsp"target="_blank">Show My Tour</a></li>
                    			<li><a href="payment.jsp" target="_blank">Payment</a></li>
                    		</ul>
                    	</div>
                    </li>
                    <li><a href="package.jsp"><i class="fa fa-user"></i>PACKAGES</a></li>
                    <li><a href="contactus.jsp"><i class="fa fa-phone"></i>CONTACT</a></li>
                      <div class="content"> <button class="cn"><a href="logout.jsp">Log Out</a></button></div>
                </ul>
            </div>       
        </div> <br><br><br><br><br><br><br><br><br><br><br><br>
         
       <div class="slideshow-container">

				<div class="mySlides fade">
				  <div class="numbertext">1 / 3</div>
				  <img src="INDIA.png" style="width:60%">
				  <div class="text">Caption Text</div>
				</div>
				
				<div class="mySlides fade">
				  <div class="numbertext">2 / 3</div>
				  <img src="MS.png" style="width:60%">
				  <div class="text">Caption Two</div>
				</div>
				
				<div class="mySlides fade">
				  <div class="numbertext">3 / 3</div>
				  <img src="HB.png" style="width:60%">
				  <div class="text">Caption Three</div>
				</div>
				
				</div>
				<br>
				
				<div style="text-align:center">
				  <span class="dot"></span> 
				  <span class="dot"></span> 
				  <span class="dot"></span>
				    <span class="dot"></span>
				      <span class="dot"></span> 
				</div>
		
       <div class="content">
            <h1 style= "color: #ff9900;">Travel & <br><span style="color: #ffffff; font-family: cursive;"><i>Xplore</i></span> <br><span style="color: #006600;">India</span></h1>  
            
            <p class="par">As the 7th largest country in the world, India stands apart from the rest of Asia,<br> marked off as it is by mountains, and the sea, which give the country a distinct<br> geographical entity.India is a home to the finest architectural heritage, <br>spectacular landscapes and largest tiger reserve. 
             From historical <br> cities to natural splendours, come see the best of India.</p>
       
       <!--  <div class="indiaM"><img src="indiaM.png" style="width:40%"></div> -->
         </div>
<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
                   
         
</div>
</body>
</html>