<!DOCTYPE html>
<html>
<head>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>Subscribe page</title>
<link rel="stylesheet" type="text/css" href="CSS/subscribe.css">
</head>

<style>

a:link, a:visited {
  background-color: #4DB7FE;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 34px 215px;
  font-size: 13px;
}

a:hover, a:active {
  background-color: #2C3B5A;
}
</style>
<body>

<div class="bbb-wrapper fl-wrap">
    <div class="subcribe-form fl-wrap">
        <p class="text-center">Iscriviti ora alla nostra newsletter </p>
        <form id="subscribe" action="NewsletterServlet" method="get"> 
           <input type="email" class="enteremail" id="subscribe-email" name="subscribe-email" placeholder="Email" spellcheck="false"> 
           <button type="submit" id="subscribe-button" class="subscribe-button color-bg" value=Subscribe>Iscriviti</button> 
           <label for="subscribe-email" class="subscribe-message"></label>
           <a href="index.jsp" >HomePage</a>
        </form>
    </div>
    
<% String iscriviti = request.getParameter("iscriviti"); 
   if (iscriviti != null && iscriviti.equals("OK")) { %>
       <script type='text/javascript'>
          alert('Sei iscritto correttamente!')
       </script> 
<% } %>    
    
</div>

</body>

</html>