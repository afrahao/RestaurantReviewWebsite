<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
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
				<nav class="codrops-demos">
				</nav>
            </header>
            <section>				
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  id="User_login" action="login" method="post">
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="email" class="uname" data-icon="u" > Your email </label>
                                    <input id="email" name="email" required="required" type="text" placeholder="mymail@mail.com" value="${keepemail}" />
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping"  checked="checked"/> 
									<label for="loginkeeping">Keep me logged in</label>
									<p>${mind}</p>
				
								</p>
                                <p class="login button"> 
                                    <input id="buttonlogin" type="submit" value="buttonlogin"/> 
								</p>
                               	<p class="change_link">

									Not a member yet ?

									<a href="#toregister" class="to_register">Join us</a>

								</p>
								
								
							
                            </form>
                        </div>
                        

                        <div id="register" class="animate form">
                            <form  id="User_register" action="register?action=register" method="post"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <input id="usernamesignup" name="name" required="required" type="text" placeholder="mysuperusername690" onblur="testname()" />
                                </p>
                                <p id="message2" style="display:none;">
                        		<label style="color:red;">4 to 16 bits (letters, Numbers, underscores, minus signs)!</label>
                       			 </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="email" required="required" type="email" placeholder="mysupermail@mail.com" onblur="testemail()"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="eg. X8df!90EO" onblur="Complex()"/>
                                </p>
                                <p id="message1" style="display:none;">
                        		<label style="color:red;">The password must contain letters, Numbers, special characters, 8-25 characters!</label>
                       			 </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <input id="passwordsignup_confirm"  name="pas" required="required" type="password" placeholder="eg. X8df!90EO" onblur="testpwd()"/>
                                </p>
                                <p id="message" style="display:none;">
                        		<label style="color:red;">Password input is inconsistent!</label>
                       			 </p>
                                <p class="signin button"> 
									<input id="signin" type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link" >  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
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
function testname(){
	
	var reg = /^[a-zA-Z0-9_-]{4,16}$/;
    var passwordsignup = document.getElementById("usernamesignup");
    var phonec1=document.getElementById("message2");
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
function testemail(){
	var email = document.getElementById("emailsignup");
	var code = "wrong";
	$.ajax({
        type: "get",
        url: "testEmail",
        data: {"email": email.value},
        success: function (data) {
        	if(data==code)
        		alert("The mailbox has been registered.");
        }
    });
}

</script>
 	<!-- 全局js -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>   
        
    </body>
</html>