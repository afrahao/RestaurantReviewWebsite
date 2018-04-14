<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>    
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="zh" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style-login.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body>
        <div class="container">
            <header>
            	<div>
                	<a href="index"><span id="back2index" > << Go Back To Index</span></a>
                </div>
                <h1>Restaurant Recommend System <span></span></h1>
				
            </header>
            <section>				
                <div id="container_demo" >
                
                    <div id="wrapper">   
                       <div id="forgetpassword" >
                            <form  id="Forget_password" >
                                <h1> Forget Password </h1> 
                                
                                <p >
                                    <label for="emailftpw" class="youmail" data-icon="u">Your Email Address</label>
                                    <input id="emailftpw" name="emailftpw" required="required" type="text" placeholder="my email address. eg.email@example.com" / onblur="checkEmail()">
                                </p>
                                
                                <p id="message2" style="display:none;">
                        			<label style="color:red;">The email address must like email@example.com !</label>
                       			</p>
                       			
                                <p>
                                	<button id="verification" onclick="validateCode()">Verification Code</button> 

                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your Verification Code</label>
                                    <input class="verification-code-input" id="emailsignup" name="emailsignup" required="required" type="text" placeholder="received 6-number code.  eg.123456"/  onblur="checkValidate()"> 
                                    
                                </p>
                                <p id="message3" style="display:none;">
                        			<label style="color:red;">The verification code must be a 6-number code!</label>
                       			</p>
                                
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your New password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/ onblur="Complex()">
                                </p>
                                <p id="message1" style="display:none;">
                        			<label style="color:red;">The password must contain letters, Numbers, special characters, 8-25 characters!</label>
                       			</p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please Confirm Your Password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/ onblur="testpwd()">
                                </p>
                                <p id="message" style="display:none;">
                        		<label style="color:red;">Password input is inconsistent!</label>
                       			 </p>
                                <p class="ok button"> 
									<input type="button" value="OK" onclick="fgpwUpdatepw()"/> 
								</p>
                                <p class="change_link">  
									Remembered the password ?
									<a href="login" class="to_register"> Go and log in </a>
								</p>
                            </form>
                            
                        </div>
						
                    </div>
                    
                </div>  
            </section>
        </div>
<script type="text/javascript"> 

function Complex(){
	
	var reg = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,30}');
    var passwordsignup = document.getElementById("passwordsignup");
    var phonec1=document.getElementById("message1");
    if(reg.test(passwordsignup.value)==true){
  		phonec1.style.display="none";
    }else{
      phonec1.style.display="block";
      passwordsignup.value = "";
  }
}

function testpwd(){
	var passwordsignup = document.getElementById("passwordsignup");
    var passwordsignup_confirm = document.getElementById("passwordsignup_confirm");
    var phonec=document.getElementById("message");
    if(passwordsignup.value==passwordsignup_confirm.value){
  		phonec.style.display="none";
    }else{
      phonec.style.display="block";
      passwordsignup_confirm.value = "";
  }
    
}

function checkEmail(){
	var regBox = {
            regEmail : /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/,//é®ç®±    
              /*  regMobile : /^0?1[3|4|5|8][0-9]\d{8}$/,//ææº */
              /*  regTel : /^0[\d]{2,3}-[\d]{7,8}$/  */ 
           } 
	var emailftpw = document.getElementById("emailftpw");
	var message2 = document.getElementById("message2");
	
	if(regBox.regEmail.test(emailftpw.value)){
		message2.style.display="none";
		testemail();
    }else{
    	message2.style.display="block";
      	emailftpw.value = "";
    }
	
}

function checkValidate(){
	
	var reg=/^\d{6}$/;
	var emailsignup = document.getElementById("emailsignup");
	var message3 = document.getElementById("message3");
	
	if(reg.test(emailsignup.value)){
		message3.style.display="none";
    }else{
    	message3.style.display="block";
    	emailsignup.value = "";
    }
	
	
}

function testemail(){
	var email = document.getElementById("emailftpw");
	var code = "wrong";
	$.ajax({
        type: "get",
        url: "testEmail",
        data: {"email": email.value},
        success: function (data) {
        	if(data!=code)
        		alert("The mailbox has not been registered.");
        }
    });
}

//发送验证码
function validateCode(){
	var email = document.getElementById("emailftpw");
	$.ajax({
        type: "get",
        url: "sendValidateCode",
        data: {"email": email.value},
        success: function (data) {
        	alert("Validate code has already been sent to your email.");
        }
    });
}

//用户忘记密码
function fgpwUpdatepw(){
	var email = document.getElementById("emailftpw");
	var validateCode = document.getElementById("emailsignup");
	var password = document.getElementById("passwordsignup");
	var msg1 = "wrong";
	var msg2 = "expired";
	var msg3 = "success";
	
	$.ajax({
        type: "get",
        url: "fgpwUpdatepw",
        data: {"email": email.value,
        	"validateCode": validateCode.value,
        	"password": password.value},
        success: function (data) {
        	        	
        	if (data == msg1){
        		window.location.href = 'forgetPassword';
        		alert("Your validate code is wrong. Please re-enter.");
        	}
        	else if (data == msg2){
        		window.location.href = 'forgetPassword';
        		alert("Your validate code has been expired. Please use a new one.");
        	}
        	else if (data == msg3){
        		window.location.href = 'login';
        		alert("Find password successfully. Please log in.")
        	}
        		
        }
    });
}

</script>        
    <!-- å¨å±js -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script> 
        
        
    <!-- 全局js -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>  
        
        
    </body>
</html>