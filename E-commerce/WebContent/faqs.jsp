<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--  commento  -->
<%@ page contentType="text/html; charset=UTF-8" %>
<title>ScarpeDiModa - FAQs</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="CSS/ddsmoothmenu.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<script type="text/javascript" src="JAVASCRIPT/jquery.min.js"></script>
<script type="text/javascript" src="JAVASCRIPT/ddsmoothmenu.js"></script>
<script type="text/javascript">  
ddsmoothmenu.init({
	mainmenuid: "top_nav", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})
</script>

<style>
body {margin:0;}

.icon-bar {
  position: fixed;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
}

.icon-bar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}

.icon-bar a:hover {
  background-color: #000;
}

.facebook {
  background: #3B5998;
  color: white;
}

.twitter {
  background: #55ACEE;
  color: white;
}

.google {
  background: #dd4b39;
  color: white;
}

.linkedin {
  background: #007bb5;
  color: white;
}

.youtube {
  background: #bb0000;
  color: white;
}


</style>

</head>

<body>

<div class="icon-bar">
  <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
  <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
  <a href="#" class="google"><i class="fa fa-google"></i></a>
  <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
  <a href="#" class="youtube"><i class="fa fa-youtube"></i></a>
</div>

<div id="templatemo_body_wrapper">
<div id="templatemo_wrapper">

	<div id="templatemo_header">
    	<div id="site_title"><h1><a href="index.jsp"></a></h1></div>
        <div id="header_right">
        	<% Object nome = request.getSession(false).getAttribute("loggedIn_NOME"); 
             if (nome == null) {
          %> 	
        	<p><a href="account.jsp">Il mio account</a> | <a href="ViewCartServlet">Carrello</a> | <a href="loginRegister.jsp">Accedi</a></p>       
		  <% } else { %>
            <p><a href="account.jsp"><%= nome.toString() %></a> | <a href="ViewCartServlet">Carrello</a></p>
          <% } %>       
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menubar">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="index.jsp" class="selected">Home</a></li>
                <li><a href="ProductsServlet">Prodotti</a></li>
                <li><a href="checkout.jsp">Checkout</a></li>
                <li><a href="about.jsp">Chi siamo</a></li>
                <li><a href="faqs.jsp">FAQs</a></li>
                <li><a href="subscribe.jsp">Iscriviti</a></li>
                <li><a href="contact.jsp">Contattaci</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of ddsmoothmenu -->
        <div id="templatemo_search">
            <form action="SearchServlet" method="get">
              <input type="text" value="" name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
              <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
            </form>
        </div>
    </div> <!-- END of templatemo_menubar -->
    
    <div id="templatemo_main">
    	<div id="sidebar" class="float_l">
        	<div class="sidebar_box"><span class="bottom"></span>
            	<h3>Categorie</h3>   
                <div class="content"> 
                	<ul class="sidebar_list">
                        <li class="first"><a href="GenereServlet?genereScarpa=uomo">Uomo</a></li>
                        <li class="first"><a href="GenereServlet?genereScarpa=donna">Donna</a></li> 
                        <li class="first"><a href="GenereServlet?genereScarpa=bambino">Bambino</a></li>
                        <li class="last"><a href="GenereServlet?genereScarpa=bambina">Bambina</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="sidebar_box"><span class="bottom"></span>
            	<h3>I più venduti </h3>   
                <div class="content"> 
                    <div class="bs_box">
                    	<a href="#"><img src="IMAGES/piuVenduti/b06.jpg" alt="image" /></a>
                        <h4><a href="#">Décolleté gold d03</a></h4>
                        <p class="price">45€</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="IMAGES/piuVenduti/b04.jpg" alt="image" /></a>
                        <h4><a href="#">Sneaker nike s04</a></h4>
                        <p class="price">70€</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="IMAGES/piuVenduti/b03.jpg" alt="image" /></a>
                        <h4><a href="#">Tennis red t03</a></h4>
                        <p class="price">40€</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="IMAGES/piuVenduti/b02.jpg" alt="image" /></a>
                        <h4><a href="#">Tennis black-white t02</a></h4>
                        <p class="price">50€</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="IMAGES/piuVenduti/b05.jpg" alt="image" /></a>
                        <h4><a href="#">Décolleté d02</a></h4>
                        <p class="price">70€</p>
                        <div class="cleaner"></div>
                    </div>
                    <div class="bs_box">
                    	<a href="#"><img src="IMAGES/piuVenduti/b01.jpg" alt="image" /></a>
                        <h4><a href="#">Tennis nike t01</a></h4>
                        <p class="price">40€</p>
                        <div class="cleaner"></div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="content" class="float_r faqs">
        	<h1>FAQs</h1>
            <h5>Come faccio a sapere se il mio ordine è stato effettuato?</h5>
            <p>Riceverai un'e-mail di conferma che il tuo ordine è stato ricevuto. Se non ricevi un'e-mail di conferma, effettua il login per vedere lo stato del tuo ordine.</p>
            
          <h5>Quando sarà  spedito il mio ordine?</h5>
            <p>Si prega di leggere la nostra politica di spedizione. Clicca <a href="#">qui</a></p>
            
            <h5>Quali metodi di pagamento accetti?</h5>
            <p>PayPal e 2Checkout (2CO)</p>
            
            <h5>Posso restituire o cambiare il mio acquisto se non mi piace?</h5>
            <p>Si prega di leggere la nostra politica di cambio. Clicca <a href="#">qui</a></p>
            
            <h5>Come faccio a sapere se l'ordine online è protetto?</h5>
            <p>
            La protezione delle tue informazioni è una priorità  assoluta per questo sito. Utilizziamo Secure Sockets Layer (SSL) per crittografare il numero, il nome e l'indirizzo della tua carta di credito, quindi solo questo sito è in grado di decodificare le tue informazioni. SSL è il metodo standard del settore con cui i computer comunicano in modo sicuro senza il rischio di intercettazione, manipolazione o rappresentazione del destinatario dei dati. Per essere sicuro che la tua connessione sia sicura; quando sei nel carrello, guarda nell'angolo inferiore della finestra del browser. Se vedi una chiave ininterrotta o un lucchetto chiuso, SSL è attivo e le tue informazioni sono al sicuro. Poiché la maggior parte dei clienti è ancora a disagio nel fornire la tua carta di credito online, utilizziamo PayPal e i servizi 2CheckOut e non è necessario che forniscano i dati della carta di credito.
            </p>
          <p>
			Questo sito è registrato con HackerGuardian. Certificazione HackerGuardian per un sito Web privo di hacker e un logo TrustLogo della carta di credito che conferma la tua affidabilità  nel portare online i dettagli della carta di credito.
          </p>

			
            <h5>Qual è la nostra politica sulla privacy?</h5>
            <p>Questo sito web rispetta la tua privacy e ti assicura di comprendere quali informazioni abbiamo bisogno per completare il tuo ordine e quali informazioni puoi scegliere di condividere con noi e con i nostri partner di marketing. Per informazioni complete sulla nostra politica sulla privacy, visita la nostra pagina sulla politica sulla privacy : <a href="#">Privacy Policy</a></p>
        </div> 
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
    
    <div id="templatemo_footer">
    	<p><a href="index.jsp">Home</a> | <a href="about.jsp">Chi siamo</a> | <a href="faqs.jsp">FAQs</a> | <a href="subscribe.jsp">Iscriviti</a> | <a href="contact.jsp">Contattaci</a>
		</p>

    	Copyright © 2021 <a href="#">ScarpeDiModa</a> </div> <!-- END of templatemo_footer -->
    
</div> <!-- END of templatemo_wrapper -->
</div> <!-- END of templatemo_body_wrapper -->

</body>
</html>