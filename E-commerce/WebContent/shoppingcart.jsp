<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page import="java.util.List" %>
<%@ page import="it.begear.corso.entity.*" %>
<!--  commento  -->
<%@ page contentType="text/html; charset=UTF-8" %>
<title>ScarpeDiModa - Carrello</title>
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
        </div>
        
        <div id="content" class="float_r">
        	<h1>Carrello</h1>
        	<table width="680px" cellspacing="0" cellpadding="5">
                <tr bgcolor="#ddd">
                   <th width="220" align="left">Scarpa </th> 
                   <th width="180" align="left">Descrizione </th> 
                   <th width="100" align="center">Quantita </th> 
                   <th width="60" align="right">Prezzo </th> 
                   <th width="90" align="right"> </th>                            
                </tr>
                      
            <% List<Scarpa> scarpe = (List<Scarpa>) request.getAttribute("scarpe");
               Carrello c = (Carrello) request.getAttribute("carrello");
               Float prezzoTot = c.getPrezzo();
        	
        	   if(scarpe.isEmpty()) { 
            %>
        	      <tr>
					  <td> <h3>Il carrello è vuoto.</h3> </td>
				  </tr>
        	<% }else {    	
        	     for(Scarpa scarpa : scarpe) {
        	%>
				  <tr> 
		        	  <td> <img src="IMAGES/scarpe/<%=scarpa.getCodice()%>.jpg" /> </td>
		        	  <td> <%=scarpa.getDescrizione()%> </td>
		              <td align='center'>
		        	    <form action='AddItemCartServlet' method='get'>
		                  <input type='text' name='quantita' value='<%=c.getQuantita(id)%>' style="width:20px;text-align:right" />  	  
		        	      <input type='hidden' name='codice' value='<%=scarpa.getCodice()%>' />
		        	      <input type='hidden' name='check' value='ok' />
		        	      <input type='submit' name='codice' value='Aggiorna' />
		        	    </form>
		              </td>		     
		              <td text-align='center'> <%=scarpa.getCosto()%> € </td> 
		              <td align='center'> 
		                  <a href="AddItemCartServlet?codice=<%=scarpa.getCodice()%>&amp;quantita=0">
		                    <img src='IMAGES/remove_x.gif' /> <br>
		                    Cancella
		                  </a> 
		              </td>
		          </tr>
			<%
        	     }
		       }
        	%>       
                  <tr>
                      <td colspan="3" align="right"  height="30px">Prezzo totale: &nbsp;&nbsp;</td>
                      <td align="right" style="background:#ddd; font-weight:bold"> <%=prezzoTot%> €</td>
                      <td style="background:#ddd; font-weight:bold"> </td>
				  </tr>
			</table>
			
            <div style="float:right; width:215px; margin-top:20px;">
				<p><a href="checkout.jsp">Procedi al checkout</a></p>
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