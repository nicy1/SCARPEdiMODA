<!DOCTYPE html>
<html>

 <head>
   <meta charset="ISO-8859-1">
   <title>Login page</title>
   <link rel="stylesheet" type="text/css" href="CSS/loginRegister.css">
</head>

<body>
   <div class="login-wrap">
	   <div class="login-html">
		   <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Accedi</label>
		   <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Registrati</label>
		   
		   <div class="login-form">
		   
		     <form action="LoginServlet" method="get">
			   <div class="sign-in-htm">
				   <div class="group">
					   <label for="user" class="label">Email</label>
					   <input id="user" type="email" class="input" name="email">
				   </div>
				   <div class="group">
					   <label for="pass" class="label">Password</label>
					   <input id="pass" type="password" class="input" name="password" data-type="password">
				   </div>
				   <div class="group">
					   <input id="check" type="checkbox" class="check" checked>
					   <label for="check"><span class="icon"></span> Resta connesso</label>
				   </div>
				   <div class="group">
					   <input type="submit" class="button" value="Accedi">
				   </div>
				   <div class="hr"></div>
				   <div class="foot-lnk">
					   <a href="#forgot">Hai smarrito la password?</a>
				   </div>
			   </div>
             </form>
  
  
	         <form action="RegisterServlet" method="post">
			   <div class="sign-up-htm">
				   <div class="group">
					   <label for="nome" class="label">Nome</label>
					   <input id="nome" type="text" class="input" name="nome" required>  
				   </div>
				   <div class="group">
					   <label for="cognome" class="label">Cognome</label>
					   <input id="cognome" type="text" class="input" name="cognome" required>
				   </div>
				    <div>
					   <label for="pass" class="label">Email</label>
					   <input id="pass" type="email" class="input" name="email" required>
				   </div>
				   <div class="group">
					   <label for="pass" class="label">Password</label>
					   <input id="pass" type="password" class="input" data-type="password" name="password" required>
				   </div>
				   <div class="group">
					   <label for="pass" class="label">Ripeti password</label>
					   <input id="pass" type="password" class="input" data-type="password" required>
				   </div>
				 <div class="group">
					   <label for="indirizzo" class="label">Indirizzo</label>
					   <input id="via" type="text" class="input" name="indirizzo" required>
				   </div>
				   
				   <div class="group">
				       <br><br>
					   <input type="submit" class="button" value="Sign Up">
				   </div>
				   <div class="hr"></div>
				   <div class="foot-lnk">
					   <label for="tab-1">Già iscritto?</a>
				   </div>
			   </div>
			 </form>
			 
		   </div>
	   </div>
   </div>
</body>

</html>   
   
   
   
   