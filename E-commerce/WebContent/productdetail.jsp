<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>ScarpeDiModa - Product Detail</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "top_nav", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<script type="text/javascript" src="js/jquery-1-4-2.min.js"></script> 
<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="js/slimbox2.js"></script> 


</head>

<body>

<div id="templatemo_body_wrapper">
<div id="templatemo_wrapper">

	<div id="templatemo_header">
    	<div id="site_title"><h1><a href="index.jsp">Negozio di scarpe online</a></h1></div>
        <div id="header_right">
        	<p>
	        <a href="AccountServlet">Il mio account</a> | <a href="shoppingcart.jsp">Carrello</a> | <a href="loginRegister.html">Accedi</a></p>       
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menubar">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="index.jsp" class="selected">Home</a></li>
                <li><a href="products.html">Prodotti</a>
                    <ul>
                        <li><a href="manProducts.html">Uomo</a></li>
                        <li><a href="womanProducts.html">Donna</a></li>             
                   </ul>
                </li>
                <li><a href="CheckoutServlet">Checkout</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="faqs.html">FAQs</a></li>
                <li><a href="subscribe.html">Iscriviti</a></li>
                <li><a href="contact.html">Contattaci</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of ddsmoothmenu -->
        <div id="templatemo_search">
            <form action="#" method="get">
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
                        <li class="first"><a href="manProducts.html">Uomo</a></li>
                        <li class="last"><a href="womanProducts.html">Donna</a></li> 
                        <li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>
                        <li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>
                    </ul>
                </div>
            </div>
            
            <div class="sidebar_box"><span class="bottom"></span>
            	<h3>Il piu venduto </h3>   
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
        
        <% String codice = request.getParameter("codice");
           String prezzo = request.getParameter("prezzo"); 
           String disp   = request.getParameter("dispo"); 
           String modelo = request.getParameter("modelo"); 
        %>
        <div id="content" class="float_r">
        	<h1>Dettagli </h1>
            <div class="content_half float_l">
        	<img src=" <%= "IMAGES/scarpe/" + codice + ".jpg"; %> " alt="image" />
            </div>
            <div class="content_half float_r">
                <table>
                    <tr>
                        <td width="160">Prezzo:</td>
                        <td> <%= prezzo + "€" %> </td>
                    </tr>
                    <tr>
                        <td>Disponibilita:</td>
                        <td> <%= disp %> </td>
                    </tr>
                    <tr>
                        <td>Modelo:</td>
                        <td> <%= modelo %> </td>
                    </tr>
                    <tr>
                    	<td>Quantita</td>
                        <td><input type="text" id="quantita" name="quantita" value="1" style="width: 20px; text-align: right" /></td>
                    </tr>
                </table>
                <div class="cleaner h20"></div>

                <a href="AddItemCartServlet?codice=<%=codice%>&amp;quantita=document.getElementById('quantita').value" class="addtocart"></a>

			</div>
            <div class="cleaner h30"></div>
            
            <h3>Prodotti Correlati</h3>
        	<div class="product_box">
            	<a href="productdetail.html"><img src="IMAGES/scarpe/c05.jpg" alt="" /></a>
                <h3>Ciabatta c05</h3>
                <p class="product_price">10 €</p>
                <a href="AddItemCartServlet?codice=c05&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=c05" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<a href="productdetail.html"><img src="IMAGES/scarpe/m01.jpg" alt="" /></a>
                <h3>Mocassiono m01</h3>
                <p class="product_price">35 €</p>
                <a href="AddItemCartServlet?codice=m01&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=m01" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<a href="productdetail.html"><img src="IMAGES/scarpe/sneak05.jpg" alt="" /></a>
                <h3>Sneaker sn05</h3>
                <p class="product_price">80 €</p>
                <a href="AddItemCartServlet?codice=sneak05&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=sneak05" class="detail"></a>
            </div>     
        </div> 
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
    
    <div id="templatemo_footer">
    	<p><a href="index.jsp">Home</a> | <a href="products.html">Prodotti</a> | <a href="about.html">About</a> | <a href="faqs.html">FAQs</a> | <a href="subscribe.html">Iscriviti</a> | <a href="contact.html">Contattici</a>
		</p>

    	Copyright © 2021 <a href="#">ScarpeDiModa</a> </div> <!-- END of templatemo_footer -->
    
</div> <!-- END of templatemo_wrapper -->
</div> <!-- END of templatemo_body_wrapper -->

</body>
</html>