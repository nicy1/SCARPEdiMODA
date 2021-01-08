<!DOCTYPE html>
<html>
<head>
<%@ page contentType="text/html; charset=UTF-8" %>
<title>Subscribe page</title>
<link rel="stylesheet" type="text/css" href="CSS/subscribe.css">
</head>
<body>

<div class="bbb-wrapper fl-wrap">
    <div class="subcribe-form fl-wrap">
        <p class="text-center">Iscriviti ora alla nostra newsletter </p>
        <form id="subscribe" action="subscribe.jsp?subscription=OK" method="post"> 
           <input type="email" class="enteremail" id="subscribe-email" name="email" placeholder="Email" spellcheck="false"> 
           <button type="submit" id="subscribe-button" class="subscribe-button color-bg" value=Subscribe>Iscriviti</button> 
           <label for="subscribe-email" class="subscribe-message"></label> 
        </form>
    </div>
    
<% String access = request.getParameter("subscription"); 
   if (access != null && access.equals("OK")) { %>
       <script type='text/javascript'>
          alert('Sei iscritto correttamente!')
       </script> 
<% } %>    
    
</div>

</body>
</html>