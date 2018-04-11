<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                            <form  action="mysuperscript.php" autocomplete="on"> 
                                <h1> Forget Password </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your Email Address</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="my phone number. eg.12345678910" />
                                </p>
                                <p >
                                	<button id="verification">Verification Code</button> 
                                	<lable id="verification-info">* error email address</lable>
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your Verification Code</label>
                                    <input class="verification-code-input" id="emailsignup" name="emailsignup" required="required" type="text" placeholder="received 6-number code.  eg.123456"/> 
                                    
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your New password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please Confirm Your Password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p class="ok button"> 
									<input type="submit" value="OK"/> 
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
        
        
    </body>
</html>