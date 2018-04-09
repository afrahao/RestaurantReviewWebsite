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
				
            </header>
            <section>				
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="mysuperscript.php" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your Phone Number </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="my phone number.  eg.12345678910"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="my password.  eg. X8df!90EO" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
								<p> 
									<a id="forget-password" href="forgetPassword">Forgot password?</a>
								</p>
								
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  id="User_register" action=""> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your phone number</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="my phone number. eg.12345678910" />
                                </p>
                                <p >
                                	<button id="verification">Verification Code</button> 
                                	<lable id="verification-info">* error phonenumber</lable>
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your verification code</label>
                                    <input class="verification-code-input" id="emailsignup" name="emailsignup" required="required" type="text" placeholder="received 6-number code.  eg.123456"/> 
                                    
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your new password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p id="message1" style="display:none;">
                        		<label style="color:red;">The password must contain letters, Numbers, special characters, 8-25 characters!</label>
                       			 </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <input id="passwordsignup_confirm"  name="pas" required="required" type="password" placeholder="eg. X8df!90EO" />
                                </p>
                                <p id="message" style="display:none;">
                        		<label style="color:red;">Password input is inconsistent!</label>
                       			 </p>
                                <p class="signin button"> 
									<input id="signin" type="button" value="Sign up" onclick="Register_user()"/> 
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
function Register_user() {
        //表单序列号，不用一个个的获取表单数据了
        var reg = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,30}');
        var passwordsignup = document.getElementById("passwordsignup");
        var passwordsignup_confirm = document.getElementById("passwordsignup_confirm");
        var phonec=document.getElementById("message");
        var phonec1=document.getElementById("message1");

   	   if(passwordsignup.value==passwordsignup_confirm.value && reg.test(passwordsignup.value)==true){
      		phonec1.style.display="none";
      		phonec.style.display="none";
      		$.post("<%=basePath%>/register", $("#User_register").serialize(), function (data) {
                window.location.reload();
            });	
       }else if(!passwordsignup.value==passwordsignup_confirm.value) 
     	  {
     	      phonec1.style.display="block";
     	      edit_phone.value = "";
     	  }else{
	      phonec.style.display="block";
	      edit_phone.value = "";
	  }
       
}
</script>
 	<!-- 全局js -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>   
        
    </body>
</html>