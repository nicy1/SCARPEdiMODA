<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>Scarpe bambini</title>
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
        	<p><a href="account.jsp">Il mio account</a> | <a href="shoppingcart.jsp">Carrello</a> | <a href="loginRegister.jsp">Accedi</a></p>       
		  <% } else { %>
            <p><a href="account.jsp"><%= nome.toString() %></a> | <a href="shoppingcart.jsp">Carrello</a></p>
          <% } %>       
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menubar">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="index.jsp" class="selected">Home</a></li>
                <li><a href="#">Prodotti</a>
                    <ul>
                        <li><a href="uomoProducts.jsp">Uomo</a></li>
                        <li><a href="donnaProducts.jsp">Donna</a></li> 
                        <li><a href="bambinoProducts.jsp">Bambino</a></li>
                        <li><a href="bambinaProducts.jsp">Bambina</a></li>             
                   </ul>
                </li>
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
              <input type="text" value=" " name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
              <input type="submit" name="Search" value=" " alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
            </form>
        </div>
    </div> <!-- END of templatemo_menubar -->
    
    <div id="templatemo_main">
    	<div id="sidebar" class="float_l">
        	<div class="sidebar_box"><span class="bottom"></span>
            	<h3>Categorie</h3>   
                <div class="content"> 
                	<ul class="sidebar_list">
                        <li class="first"><a href="uomoProducts.jsp">Uomo</a></li>
                        <li class="first"><a href="donnaProducts.jsp">Donna</a></li> 
                        <li class="first"><a href="bambinoProducts.jsp">Bambino</a></li>
                        <li class="last"><a href="bambinaProducts.jsp">Bambina</a></li>
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
        
        <div id="content" class="float_r">
        	<h1> Scarpe da Bambino</h1>
            <div class="product_box">
	            <h3>bambino01</h3>
            	<a href="#"><img src="IMAGES/scarpe/bambino01.jpg" alt="Shoes 1" /></a>
              <p class="product_price">100€</p>
                <a href="AddItemCartServlet?codice=bambino01&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambino01" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<h3>bambino02</h3>
            	<a href="#"><img src="IMAGES/scarpe/bambino02.jpg" alt="Shoes 2" /></a>
            <p class="product_price">80€</p>
                <a href="AddItemCartServlet?codice=bambino02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambino02" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>bambino03</h3>
            	<a href="#"><img src="IMAGES/scarpe/bambino03.jpg" alt="Shoes 3" /></a>
              <p class="product_price">60€</p>
                <a href="AddItemCartServlet?codice=bambino03&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambino03" class="detail"></a>
            </div>     
            
            <div class="cleaner"></div>
               	
            <div class="product_box">
            	<h3>bambino04</h3>
            	<a href="#"><img src="IMAGES/scarpe/bambino04.jpg" alt="Shoes 4" /></a>
              <p class="product_price">260€</p>
                <a href="AddItemCartServlet?codice=bambino04&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambino04" class="detail"></a>
            </div>        	
            <div class="product_box">
	            <h3>bambino05</h3>
            	<a href="#"><img src="IMAGES/scarpe/bambino05.jpg" alt="Shoes 5" /></a>
            <p class="product_price">80€</p>
                <a href="AddItemCartServlet?codice=bambino05&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambino05" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>bambino06</h3>
            	<a href="#"><img src="IMAGES/scarpe/bambino06.jpg" alt="Shoes 6" /></a>
              <p class="product_price">190€</p>
                <a href="AddItemCartServlet?codice=bambino06&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambino06" class="detail"></a>
            </div>   
            
            <div class="cleaner"></div>
                 	
            <div class="product_box">
            	<h3>bambino07</h3>
            	<a href="#"><img src="IMAGES/scarpe/bambino07.jpg" alt="Shoes 7" /></a>
              <p class="product_price">30€</p>
                <a href="AddItemCartServlet?codice=bambino07&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambino07" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<h3>bambino08</h3>
            	<a href="#"><img src="IMAGES/scarpe/bambino08.jpg" alt="Shoes 8" /></a>
            <p class="product_price">220€</p>
                <a href="AddItemCartServlet?codice=bambino08&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambino08" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	 <h3>bambino09</h3>
            	<a href="#"><img src="IMAGES/scarpe/bambino09.jpg" alt="Shoes 9" /></a>
              <p class="product_price">65€</p>
                <a href="AddItemCartServlet?codice=bambino09&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambino09" class="detail"></a>
            </div>  
        </div> 
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
    
    <div id="templatemo_footer">
    	<p><a href="index.jsp">Home</a> | <a href="about.jsp">Chi siamo</a> | <a href="faqs.jsp">FAQs</a> | <a href="subscribe.jsp">Iscriviti</a> | <a href="contact.jsp">Contattaci</a>
		</p>

    	Copyright © 2021 <a href="#">ScarpeDiModa</a> </div> <!-- END of templatemo_footer -->
    
</div> <!-- END of templatemo_wrapper -->
</div> <!-- END of templatemo_body_wrapper -->

<% String disp = request.getParameter("disponibile"); 
   if (disp != null && disp.equals("NO")) { %>
       <script type='text/javascript'>
          alert('Non disponibile!')
       </script> 
<% } %>

</body>
</html>