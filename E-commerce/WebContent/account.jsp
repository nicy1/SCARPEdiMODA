<!-- templatemo 367 shoes -->
<!-- 
Shoes Template 
http://www.templatemo.com/preview/templatemo_367_shoes 
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>Il mio account</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="CSS/ddsmoothmenu.css" />

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
</head>

<body>
<div id="templatemo_body_wrapper">
<div id="templatemo_wrapper">

	<div id="templatemo_header">
    	<div id="site_title"><h1><a href="index.jsp">Negozio di scarpe online</a></h1></div>
        <div id="header_right">
        	<p>
	        <a href="AccountServlet">Il mio account</a> | <a href="shoppingcart.jsp">Carrello</a> | <a href="loginRegister.jsp">Accedi</a></p>       
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menubar">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="index.jsp" class="selected">Home</a></li>
                <li><a href="#">Prodotti</a>
                    <ul>
                        <li><a href="uomoProducts.html">Uomo</a></li>
                        <li><a href="donnaProducts.html">Donna</a></li> 
                        <li><a href="bambinoProducts.html">Bambino</a></li>
                        <li><a href="bambinaProducts.html">Bambina</a></li>             
                   </ul>
                </li>
                <li><a href="CheckoutServlet">Checkout</a></li>
                <li><a href="about.html">Chi siamo</a></li>
                <li><a href="faqs.html">FAQs</a></li>
                <li><a href="subscribe.html">Iscriviti</a></li>
                <li><a href="contact.html">Contattaci</a></li>
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
    
    <% String idutente = request.getParameter("idutente");  %>
    
    <div id="templatemo_main">
    	<div id="sidebar" class="float_l">
        	<div class="sidebar_box"><span class="bottom"></span>
            	<h3>Menù</h3>   
                <div class="content"> 
                	<ul class="sidebar_list">
                        <li class="last"><a href="LogoutServlet?idutente=<%= idutente %>">Esci</a></li> 
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
                        <h4><a href="#">Décolleté d02</h4>
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
        	<h1> Il mio account</h1>
            <div class="product_box">
	            <h3>I miei ordini</h3>
            	<a href="UserOrdersServlet?idutente=<%= idutente %>"><img src="IMAGES/Ilmioaccount/I miei ordini.png" alt="Shoes 1" /></a>
            </div>        	
            <div class="product_box">
            	<h3>Impostazioni di sicurezza</h3>
            	<a href="#"><img src="IMAGES/Ilmioaccount/impostazion di sicurezza.jpg" alt="Shoes 2" /></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>Indirizzi</h3>
            	<a href="#"><img src="IMAGES/Ilmioaccount/indirizzi.jpg" alt="Shoes 3" /></a>
            </div>   
              
            <div class="cleaner"></div>
               	
            <div class="product_box">
            	<h3>I tuoi pagamenti</h3>
            	<a href="#"><img src="IMAGES/Ilmioaccount/I tuoi pagamenti.jpg" alt="Shoes 4" /></a>

            </div>        	
            <div class="product_box">
	            <h3>Centro comunicazioni</h3>
            	<a href="contact.html"><img src="IMAGES/Ilmioaccount/centro_comunicazioni.jpg" alt="Shoes 5" /></a>

            </div>        	
            <div class="product_box no_margin_right">
            	<h3>Aiuto</h3>
            	<a href="faqs.html"><img src="IMAGES/Ilmioaccount/aiuto.jpg" alt="Shoes 6" /></a>
            </div>   
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
   
    <div id="templatemo_footer">
    	<p><a href="index.jsp">Home</a> | <a href="about.html">Chi siamo</a> | <a href="faqs.html">FAQs</a> | <a href="subscribe.html">Iscriviti</a> | <a href="contact.html">Contattici</a>
		</p>

    	Copyright © 2021 <a href="#">ScarpeDiModa</a> </div> <!-- END of templatemo_footer -->
    
</div> <!-- END of templatemo_wrapper -->
</div> <!-- END of templatemo_body_wrapper -->

</body>
</html>