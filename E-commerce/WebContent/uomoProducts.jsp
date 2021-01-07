<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--  commento  -->
<%@ page contentType="text/html; charset=UTF-8" %>
<title>Scarpe uomo</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="CSS/ddsmoothmenu.css" />

<script type="text/javascript" src="JAVASCRIPT/jquery.min.js"></script>
<script type="text/javascript" src="JAVASCRIPT/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

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
    	<div id="site_title"><h1><a href="index.jsp"></a></h1></div>
        <div id="header_right">
        	<p>
	        <a href="account.jsp">Il mio account</a> | <a href="shoppingcart.jsp">Carrello</a> | <a href="loginRegister.jsp">Accedi</a></p>       
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
                <li><a href="about.html">Chi siamo</a></li>
                <li><a href="faqs.html">FAQs</a></li>
                <li><a href="subscribe.html">Iscriviti</a></li>
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
            	<h3>I più venduti</h3>   
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
                    <div class="bs_box">
                        <div class="cleaner"></div>
                        <div class="paddingSidebar"></div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="content" class="float_r">
        	<h1> Scarpe da Uomo</h1>
            <div class="product_box">
	            <h3>Ciabatta01</h3>
            	<a href="#"><img src="IMAGES/scarpe/c01.jpg" alt="Shoes 1" /></a>
              <p class="product_price">€ 100</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<h3>Ciabatta02</h3>
            	<a href="#"><img src="IMAGES/scarpe/c02.jpg" alt="Shoes 2" /></a>
            <p class="product_price">€ 80</p>
               <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>Ciabatta03</h3>
            	<a href="#"><img src="IMAGES/scarpe/c03.jpg" alt="Shoes 3" /></a>  
              <p class="product_price">€ 60</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>     
            
            <div class="cleaner"></div>
               	
            <div class="product_box">
            	<h3>Ciabatta04</h3>
            	<a href="#"><img src="IMAGES/scarpe/c04.jpg" alt="Shoes 4" /></a>
              <p class="product_price">€ 260</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box">
	            <h3>Ciabatta05</h3>
            	<a href="#"><img src="IMAGES/scarpe/c05.jpg" alt="Shoes 5" /></a> 
            <p class="product_price">€ 80</p>
              <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>Mocassino01</h3>
            	<a href="#"><img src="IMAGES/scarpe/m01.jpg" alt="Shoes 6" /></a>
              <p class="product_price">€ 190</p>
               <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>   
            
            <div class="cleaner"></div>
                 	
            <div class="product_box">
            	<h3>Mocassino02</h3>
            	<a href="#"><img src="IMAGES/scarpe/m02.jpg" alt="Shoes 7" /></a>
              <p class="product_price">€ 30</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<h3>Mocassino03</h3>
            	<a href="#"><img src="IMAGES/scarpe/m03.jpg" alt="Shoes 8" /></a>
            <p class="product_price">€ 220</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	 <h3>Mocassino04</h3>
            	<a href="#"><img src="IMAGES/scarpe/m04.jpg" alt="Shoes 9" /></a>
              <p class="product_price">€ 65</p>
              <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>  
        </div> 
        <div class="cleaner"></div>
        
      	<div id="content" class="float_r">
        <div class="product_box">
	            <h3>Mocassino05</h3>
            	<a href="#"><img src="IMAGES/scarpe/m05.jpg" alt="Shoes 1" /></a>
              <p class="product_price">€ 100</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<h3>Sneaker01</h3>
            	<a href="#"><img src="IMAGES/scarpe/sneak01.jpg" alt="Shoes 2" /></a>
            <p class="product_price">€ 80</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>Sneaker02</h3>
            	<a href="#"><img src="IMAGES/scarpe/sneak02.jpg" alt="Shoes 3" /></a>
              <p class="product_price">€ 60</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>     
            </div>
            <div class="cleaner"></div>
    
    		<div id="content" class="float_r">
    		<div class="product_box">
	            <h3>Sneaker03</h3>
            	<a href="#"><img src="IMAGES/scarpe/sneak03.jpg" alt="Shoes 1" /></a>
              <p class="product_price">€ 100</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<h3>Sneaker04</h3>
            	<a href="#"><img src="IMAGES/scarpe/sneak04.jpg" alt="Shoes 2" /></a>
            <p class="product_price">€ 80</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>Sneaker05</h3>
            	<a href="#"><img src="IMAGES/scarpe/sneak05.jpg" alt="Shoes 3" /></a>
              <p class="product_price">€ 60</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>     
            </div>
            <div class="cleaner"></div>
    
    <div id="content" class="float_r">
    <div class="product_box">
	            <h3>Stivali01</h3>
            	<a href="#"><img src="IMAGES/scarpe/stiv01.jpg" alt="Shoes 1" /></a>
              <p class="product_price">€ 100</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<h3>Stivali02</h3>
            	<a href="#"><img src="IMAGES/scarpe/stiv02.jpg" alt="Shoes 2" /></a>
            <p class="product_price">€ 80</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>Stivali03</h3>
            	<a href="#"><img src="IMAGES/scarpe/stiv03.jpg" alt="Shoes 3" /></a>
              <p class="product_price">€ 60</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>     
            </div>
            <div class="cleaner"></div>
    
    <div id="content" class="float_r">
    <div class="product_box">
	            <h3>Stivali04</h3>
            	<a href="#"><img src="IMAGES/scarpe/stiv04.jpg" alt="Shoes 1" /></a>
              <p class="product_price">€ 100</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<h3>Stivali05</h3>
            	<a href="#"><img src="IMAGES/scarpe/stiv05.jpg" alt="Shoes 2" /></a>
            <p class="product_price">€ 80</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>Tennis01</h3>
            	<a href="#"><img src="IMAGES/scarpe/ten01.jpg" alt="Shoes 3" /></a>
              <p class="product_price">€ 60</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>     
            </div>
            <div class="cleaner"></div>
            
            <div id="content" class="float_r">
            <div class="product_box">
	            <h3>Tennis02</h3>
            	<a href="#"><img src="IMAGES/scarpe/ten02.jpg" alt="Shoes 1" /></a>
              <p class="product_price">€ 100</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box">
            	<h3>Tennis03</h3>
            	<a href="#"><img src="IMAGES/scarpe/ten03.jpg" alt="Shoes 2" /></a>
            <p class="product_price">€ 80</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>        	
            <div class="product_box no_margin_right">
            	<h3>Tennis04</h3>
            	<a href="#"><img src="IMAGES/scarpe/ten04.jpg" alt="Shoes 3" /></a>
              <p class="product_price">€ 60</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>     
            </div>
            <div class="cleaner"></div>
            
            <div id="content" class="float_r">
            <div class="product_box">
	            <h3>Tennis05</h3>
            	<a href="#"><img src="IMAGES/scarpe/ten05.jpg" alt="Shoes 1" /></a>
              <p class="product_price">€ 100</p>
                <a href="AddItemCartServlet?codice=bambina02&amp;quantita=1" class="addtocart"></a>
                <a href="DetailItemServlet?codice=bambina02" class="detail"></a>
            </div>    
            </div>    	
			<div class="cleaner"></div>
    
    		</div> <!-- END of templatemo_main -->
    
    <div id="templatemo_footer">
    	<p><a href="index.jsp">Home</a> | <a href="about.html">Chi siamo</a> | <a href="faqs.html">FAQs</a> | <a href="subscribe.html">Iscriviti</a> | <a href="contact.jsp">Contattaci</a>
		</p>


    	Copyright © 2021 <a href="#">ScarpeDiModa</a> 
    </div> <!-- END of templatemo_footer -->
    
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