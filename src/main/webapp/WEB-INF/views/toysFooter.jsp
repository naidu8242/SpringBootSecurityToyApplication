<style type="text/css">
	/* vertical tabs */
.vertical-tab {
    color: #333;
    display: block;
    margin: auto;
    position: relative;
    float: left;
    /* width: 70%; */
}

.image-style {
    float: left;
    width: 25%;
}

.vertical-tab input[name="sections"] {
    left: -9999px;
    position: absolute;
    top: -9999px;
}

.vertical-tab .section-w3ls {
    display: block;
}

.vertical-tab .section-w3ls label {
    background: #fff;
    border-right: 1px solid #dcdcdc;
    cursor: pointer;
    display: block;
    font-size: 17px;
    padding: 33px 20px;
    position: relative;
    width: 189px;
    z-index: 100;
    color: #111;
    text-align: center;
}

.vertical-tab .section-w3ls article {
    display: none;
    left: 230px;
    min-width: 570px;
    position: absolute;
    top: 0;
}

.vertical-tab .section-w3ls article:after {
    background-color: #fff;
    bottom: 0;
    content: "";
    display: block;
    left: -229px;
    position: absolute;
    top: 0;
    width: 220px;
    z-index: 1;
} 

/* .vertical-tab input[name="sections"]:checked+label {
    background: #00ad45;
    border-right: 1px solid #000;
    color: #fff;
} */
.activeLabel {
    background: #00ad45 !important;
    border-right: 1px solid #000 !important;
    color: #fff !important;
}
/* .vertical-tab input[name="sections"]:checked~article {
    display: block;
} */

label.icon-left-w3pvt span {
    display: block;
    font-size: 30px;
    margin-bottom: 7.8px;
}

/* //vertical tabs */

/* form style */
.sub-main-w3 form {
    background: #ffff;
    padding: 2em;
}

.legend {
    color: #000;
    font-size: 24px;
    text-align: center;
    margin-bottom: 1.2em;
    font-weight: 400;
}

p.para-style {
    margin-bottom: .8em;
    font-size: 15px;
    letter-spacing: .5px;
    line-height: 1.8;
}

p.para-style-2 {
    font-size: 15px;
    letter-spacing: .5px;
    line-height: 1.8;
    margin-bottom: 2em;
}

p.para-style-2 a {
    color: blue;
}

.input {
    margin-bottom: 1em;
    padding: 13px 15px;
    border: 1px solid #eee;
    background: #eee;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

.input span {
    font-size: 15px;
    color: #464646;
    margin-right: 10px;
}

.input input {
    color: #000;
    font-size: 14px;
    letter-spacing: 1px;
    box-sizing: border-box;
    border: none;
    outline: none;
    background: transparent;
    width: 100%;
}

.submit {
    margin: 2.3em auto 0;
    background: #00ad45;
    border: none;
    cursor: pointer;
    font-weight: 600;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
    display: block;
    color: #fff;
    padding: 14px 30px;
    -webkit-border-radius: 0;
    -o-border-radius: 0;
    -ms-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    font-size: 15px;
    letter-spacing: 2px;
    width: 100%;
}

.submit:hover {
    opacity: .8;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
}

a.bottom-text-w3ls {
    color: #757474;
    font-size: 14px;
    display: inherit;
    letter-spacing: 1px;
    text-align: center;
    margin-top: 3.2em;
}

/* //form style */

/* copyright */
.copyright {
    margin-top: 9vw;
    padding-bottom: 1.5vw;
}

.copyright h2 {
    font-size: 15px;
    color: #fff;
    letter-spacing: 1px;
    text-align: center;
    line-height: 1.8;
}

.copyright h2 a {
    color: #fff;
    font-weight: bold;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
}

.copyright h2 a:hover {
    opacity: .8;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
}
#login{
    display: block;
    position: absolute;
    top: 37px;
    right: 120px;
}
#login button{
    padding: 10px 20px;
    background-color: #00ad45;
    color: #fff;border-radius: 5px;border: none;font-size: 16px;
}
#submenu{
    display:block;
}

/* //copyright */

.modal-xl { max-width: 1140px;}
.login-modal { width: 64%; position: absolute; top:15%; left: 18%; display:block; z-index: 100;
 background-color: #fff; padding: 20px; border-radius:5px; border: 1px solid #ededed; display: none;}
/* responsive */
@media(max-width: 1080px) {
    h1 {
        font-size: 4vw;
    }
}

@media(max-width: 1050px) {
    .sub-main-w3 {
        max-width: 900px;
    }

    .vertical-tab .section-w3ls article {
        min-width: 445px;
    }

    p.para-style-2 {
        font-size: 14px;
        margin-bottom: 1em;
    }

    p.para-style {
        margin-bottom: .7em;
        font-size: 14px;
    }
}

@media(max-width: 900px) {
    .sub-main-w3 {
        max-width: 768px;
    }

    .vertical-tab .section-w3ls article {
        min-width: 400px;
        left: 175px;
    }

    .vertical-tab .section-w3ls label {
        width: 134px;
        font-size: 15px;
        padding: 34px 20px;
    }

    h1 {
        font-size: 5vw;
        padding: 4.5vw 1vw 1vw;
    }
}

@media(max-width: 768px) {
    .sub-main-w3 {
        max-width: 575px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
    }

    .image-style {
        float: none;
        width: 100%;
        min-height: 300px;
        order: 2;
    }

    .vertical-tab {
        float: none;
        width: 100%;
    }
}

@media(max-width: 667px) {
    h1 {
        font-size: 6vw;
    }
}

@media(max-width: 640px) {
    .copyright h2 {
        font-size: 14px;
    }
}

@media(max-width: 600px) {
    .sub-main-w3 {
        max-width: 500px;
    }

    .vertical-tab .section-w3ls article {
        min-width: 365px;
        left: 135px;
    }

    .vertical-tab .section-w3ls label {
        width: 114px;
        font-size: 15px;
        padding: 31px 10px;
    }

    h1 {
        font-size: 7vw;
    }
}

@media(max-width: 480px) {
    .vertical-tab .section-w3ls article {
        min-width: 291px;
        left: 109px;
    }

    .vertical-tab .section-w3ls label {
        width: 89px;
        font-size: 14px;
        padding: 26.8px 10px;
    }

    .sub-main-w3 {
        max-width: 400px;
    }

    .image-style {
        min-height: 220px;
    }

    .sub-main-w3 form {
        padding: 1.5em;
    }

    .submit {
        font-size: 14px;
    }

    .input input {
        font-size: 13px;
    }

    p.para-style {
        margin-bottom: .4em;
        font-size: 13px;
    }

    p.para-style-2 {
        font-size: 13px;
    }

    .input {
        padding: 12px 12px;
    }

    a.bottom-text-w3ls {
        margin-top: 3em;
    }

    .last-btn {
        margin: 1em auto 0;
    }

    .copyright h2 {
        font-size: 12px;
    }
}

@media(max-width: 414px) {
    .sub-main-w3 {
        max-width: 320px;
    }

    .vertical-tab .section-w3ls article {
        position: static;
    }

    .vertical-tab .section-w3ls label {
        width: 100%;
        font-size: 14px;
        padding: 20px 0;
        border-right: none;
        border-bottom: 1px solid #dcdcdc;
        border-top: 1px solid #dcdcdc;
    }

    .vertical-tab input[name="sections"]:checked+label {
        border-right: none;
        border-bottom: 1px solid #000;
        border-top: none;
    }

    .image-style {
        min-height: 190px;
    }

    h1 {
        font-size: 1.8em;
        padding: 6.5vw 1vw 3vw;
    }

    .copyright h2 {
        font-size: 13px;
    }

    .last-btn {
        margin: 1.5em auto 0;
    }

    p.para-style {
        margin-bottom: 1em;
    }

    p.para-style-2 {
        margin-bottom: 2em;
    }

}

@media(max-width: 320px) {
    .sub-main-w3 {
        max-width: 270px;
    }

    .vertical-tab .section-w3ls article {
        min-width: 270px;
    }
}
.boxdropshadow { position: fixed; width: 100%; height: 100%; left:0; top: 0;
 display: block; background:rgba(0,0,0,.6); z-index: 100; display: none;}
.closePop { 
font-size: 20px;
color: #a21e23;
position: absolute;
right: 15px;
top: 15px;
border: 1px solid #d9d8d8;
padding: 2px 12px; cursor: pointer;
}
.closePop:hover { background-color: #ededed; border: 1px solid #fff;}
.redColor { color: red; display: none}
</style>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--subscribe-address-->
      <section class="subscribe">
         <div class="container-fluid">
         <div class="row">
            <div class="col-lg-6 col-md-6 map-info-right px-0">
               <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3150859.767904157!2d-96.62081048651531!3d39.536794757966845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1408111832978"> </iframe>
            </div>
            <div class="col-lg-6 col-md-6 address-w3l-right text-center">
               <div class="address-gried ">
                  <span class="far fa-map"></span>
                  <p>25478 Road St.121<br>USA New Hill
                  <p>
               </div>
               <div class="address-gried mt-3">
                  <span class="fas fa-phone-volume"></span>
                  <p> +(000)123 4565<br>+(010)123 4565</p>
               </div>
               <div class=" address-gried mt-3">
                  <span class="far fa-envelope"></span>
                  <p><a href="mailto:info@example.com">info@example1.com</a>
                     <br><a href="mailto:info@example.com">info@example2.com</a>
                  </p>
               </div>
            </div>
         </div>
		 </div>
      </section>
      <!--//subscribe-address-->
      <section class="sub-below-address py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Get In Touch Us</h3>
            <div class="icons mt-4 text-center">
               <ul>
                  <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                  <li><a href="#"><span class="fas fa-envelope"></span></a></li>
                  <li><a href="#"><span class="fas fa-rss"></span></a></li>
                  <li><a href="#"><span class="fab fa-vk"></span></a></li>
               </ul>
               <p class="my-3">velit sagittis vehicula. Duis posuere 
                  ex in mollis iaculis. Suspendisse tincidunt
                  velit sagittis vehicula. Duis posuere 
                  velit sagittis vehicula. Duis posuere 
               </p>
            </div>
            <div class="email-sub-agile">
               <form action="#" method="post">
                  <div class="form-group sub-info-mail">
                     <input type="email" class="form-control email-sub-agile" placeholder="Email">
                  </div>
                  <div class="text-center">
                     <button type="submit" class="btn subscrib-btnn">Subscribe</button>
                  </div>
               </form>
            </div>
         </div>
      </section>
      <!--//subscribe-->
      <!-- footer -->
      <footer class="py-lg-4 py-md-3 py-sm-3 py-3 text-center">
         <div class="copy-agile-right">
            <p> 
               © 2018 Toys-Shop. All Rights Reserved | Design by <a href="http://www.W3Layouts.com" target="_blank">W3Layouts</a>
            </p>
         </div>
      </footer>
      
      
      <div class="boxdropshadow" id="boxdropshadow"></div>
      
      <div class="login-modal" id="loginModal">

			<div class="closePop" id="closePop">X</div>
			<!-- vertical tabs -->
			<div class="vertical-tab">
				<div id="section1" class="section-w3ls" >
					<input type="radio" name="sections" id="option1" checked>
					<label id="optionLogin" for="option1" class="icon-left-w3pvt"><span class="fa fa-user-circle" aria-hidden="true"></span>Login</label>
					<article class="optionLogin">
						<form id="login-form" name="login-form" method="post" action="/login">
							<h3 class="legend">Login Here</h3>
							<div class="input">
								<span class="fa fa-envelope-o" aria-hidden="true"></span>
								<input type="email" placeholder="Email" id="email" name="email" value="${email}" required />
							</div>
							<div class="input">
								<span class="fa fa-key" aria-hidden="true"></span>
								<input type="password" placeholder="Password" id="password" name="password" value="${password}" required />
							</div>
							<c:if test="${isLoginFailed eq true}">
							  <p class="redColor" id="colorHiding" style="display:block">Your username or password is incorrect </p>
							</c:if>
							<button type="submit" class="btn submit" onclick="toysLoginForm11();">Login</button>
							<a href="#" class="bottom-text-w3ls">Forgot Password?</a>
						</form>
					</article>
				</div>
				<div id="section2" class="section-w3ls" >
					<input type="radio" name="sections" id="option2">
					<label id="optionRegister" for="option2" class="icon-left-w3pvt"><span class="fa fa-pencil-square" aria-hidden="true"></span>Register</label>
					<article class="optionRegister">
						<form action="#" id="register-form" name="register-form" method="post">
							<h3 class="legend">Register Here</h3>
							<div class="input">
								<span class="fa fa-user-o" aria-hidden="true"></span>
								<input type="text" placeholder="Your Name" name="registerName" id="registerName" required />
							</div>
							<div class="input">
								<span class="fa fa-envelope-o" aria-hidden="true"></span>
								<input type="text" placeholder="Your Email Address" name="registerEmail" id="registerEmail" required />
							</div>
							<div class="input">
								<span class="fa fa-key" aria-hidden="true"></span>
								<input type="password" placeholder="Choose Password" name="registerPassword" id="registerPassword" required />
							</div>
							<div class="input">
								<span class="fa fa-phone" aria-hidden="true"></span>
								<input type="number" min="1000000000" max="9999999999" name="registerMobileNumber"  id="registerMobileNumber"  placeholder="Mobile Number (For order status updates)" required />
							</div>
							
					<button type="button" class="btn submit" onclick="toysRegistation();">Register</button>
						</form>
					</article>
				</div>
				<div id="section3" class="section-w3ls">
					<input type="radio" name="sections" id="option3">
					<label  id="optionForgot" for="option3" class="icon-left-w3pvt"><span class="fa fa-lock" aria-hidden="true"></span>Forgot Password?</label>
					<article class="optionForgot">
						<form action="#" id="reset-form" name="register-form" method="post">
							<h3 class="legend last">Reset Password</h3>
							<p class="para-style">Enter your email address below and we'll send you an email with instructions.</p>
							<p class="para-style-2"><strong>Need Help?</strong> Learn more about how to <a href="#">retrieve an existing
									account.</a></p>
							<div class="input">
								<span class="fa fa-envelope-o" aria-hidden="true"></span>
								<input type="email" placeholder="Email" name="email" required />
							</div>
							<button type="submit" class="btn submit last-btn">Reset</button>
						</form>
					</article>
				</div>
			</div>
			<!-- //vertical tabs -->
			<div class="clear"></div>
		  </div>
		  
		  
		  
		  <script>
		 /*  $("#section1").click(function(){
			  $('#login-form')[0].reset();
		  })
		   $("#section2").click(function(){
			  $('#register-form')[0].reset();
		  })
		   $("#section3").click(function(){
			  $('#reset-form')[0].reset();
		  }) */
		  
		  </script>
		  
		  
      <script src='/resources/js/jquery-2.2.3.min.js'></script>
      <script src="/resources/js/minicart.js"></script>
      <script>
         toys.render();
         
         toys.cart.on('toys_checkout', function (evt) {
         	var items, len, i;
         
         	if (this.subtotal() > 0) {
         		items = this.items();
         
         		for (i = 0, len = items.length; i < len; i++) {}
         	}
         });
      </script>
      <!-- //cart-js -->
      <!--responsiveslides banner-->
      <script src="/resources/js/responsiveslides.min.js"></script>
      <script>
         // You can also use "$(window).load(function() {"
         $(function () {
         	// Slideshow 4
         	$("#slider4").responsiveSlides({
         		auto: true,
         		pager:false,
         		nav:true ,
         		speed: 900,
         		namespace: "callbacks",
         		before: function () {
         			$('.events').append("<li>before event fired.</li>");
         		},
         		after: function () {
         			$('.events').append("<li>after event fired.</li>");
         		}
         	});
         
         });
      </script>
      <!--// responsiveslides banner-->	 
      <!--slider flexisel -->
      <script src="/resources/js/jquery.flexisel.js"></script>
      <script>
         $(window).load(function() {
         	$("#flexiselDemo1").flexisel({
         		visibleItems: 3,
         		animationSpeed: 3000,
         		autoPlay:true,
         		autoPlaySpeed: 2000,    		
         		pauseOnHover: true,
         		enableResponsiveBreakpoints: true,
         		responsiveBreakpoints: { 
         			portrait: { 
         				changePoint:480,
         				visibleItems: 1
         			}, 
         			landscape: { 
         				changePoint:640,
         				visibleItems:2
         			},
         			tablet: { 
         				changePoint:768,
         				visibleItems: 2
         			}
         		}
         	});
         	
         });
      </script>
      <!-- //slider flexisel -->
      <!-- start-smoth-scrolling -->
      <script src="/resources/js/move-top.js"></script>
      <script src="/resources/js/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <!-- //here ends scrolling icon -->
      <!--bootstrap working-->
      <script src="/resources/js/bootstrap.min.js"></script>
      <!-- //bootstrap working-->
      
      <script>
      function openLoginModal(){
    	$("#loginModal, #boxdropshadow").fadeIn();
    	 $(".optionLogin").show();
    	 $(".optionRegister").hide();
    	 $(".optionForgot").hide();
    	 $("#optionLogin").addClass("activeLabel");
    	 $("#optionForgot").removeClass("activeLabel");
    	 $("#optionRegister").removeClass("activeLabel");
      };
      $("#closePop").click(function() {
    	  $("#loginModal, #boxdropshadow").fadeOut();
      });
      
      </script>
      
      
      <script>
      function toysLoginForm(){
  		var toysUrl =  "http://localhost:8080";
  		var frm = $('#login-form').serializeFormJSON();
  		var email = $("#email").val();
  		var password = $("#password").val();
  		var con = JSON.stringify(frm);
  		con = con.replace(/[{}]/g, "");
  	    var jsonData = encodeURIComponent(con);
  	    var tt="{'email:srinivas','password':'ererere'}";
  	    alert(con)
  		$.ajax({
  			type : "POST",
  			data: frm,
  			processData: false, 
	 		contentType: false,
  			url :"/toysLoginForm?email="+email+"&password="+password,
  			success : function(data) {
  				alert(data == false)
  				if(data == false)
  				document.getElementById("colorHiding").style.display="block";
  				else
  				document.getElementById("colorHiding").style.display="none";
  			},
  		});
      }
      </script>
      
      
      
      <script>
      function toysRegistation(){
    		var formData = getFormData("register-form");
    		$.ajax({
      			type : "POST",
      			data: formData,
      			url :"/toysRegistration",
      			success : function(data) {
      				alert(data == false)
      				if(data == false)
      				document.getElementById("colorHiding").style.display="block";
      				else
      				document.getElementById("colorHiding").style.display="none";
      			},
      		});
    	  
      }
      </script>
      
      
 
 <script>
 $(".optionLogin").show();
 $('#optionLogin').addClass("activeLabel");
 $("#optionLogin").click(function(){
	$(this).addClass("activeLabel");
	 $("#optionForgot").removeClass("activeLabel");
	 $("#optionRegister").removeClass("activeLabel");
	 $(".optionLogin").show();
	 $(".optionRegister").hide();
	 $(".optionForgot").hide();
 });
 
 $("#optionRegister").click(function(){
	 $(this).addClass("activeLabel");
	 $("#optionLogin").removeClass("activeLabel");
	 $("#optionForgot").removeClass("activeLabel");
	 $(".optionRegister").show();
	 $(".optionLogin").hide();
	 $(".optionForgot").hide();
 });
 
 $("#optionForgot").click(function(){
	 $(this).addClass("activeLabel");
	 $("#optionLogin").removeClass("activeLabel");
	 $("#optionRegister").removeClass("activeLabel");
	 $(".optionForgot").show();
	 $(".optionRegister").hide();
	 $(".optionLogin").hide();
 });
 </script> 
      
      
      
      
      
      
      
   </body>
</html>