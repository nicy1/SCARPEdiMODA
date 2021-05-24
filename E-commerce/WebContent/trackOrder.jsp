<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.text. *" %>
<%@ page import = "java.util. *" %>
<%@ page import = "java.time. *" %>
<title>ScarpeDiModa - TrackOrder</title>
<link rel="stylesheet" type="text/css" href="CSS/trackOrder.css">
</head>

<body>
<div class="container">
  <div class="row">
                        <% String date = request.getParameter("date"); %>
                        
						<div class="col-12 col-md-10 hh-grayBox pt45 pb20">
							<div class="row justify-content-between">
								<div class="order-tracking completed">
									<span class="is-complete"></span>
									<p>Ordinato<br><span><%= date%></span></p>
								</div>
								<div class="order-tracking completed">
									<span class="is-complete"></span>
									<p>Spedito<br><span><%= date %></span></p>
								</div>
								<div class="order-tracking">
									<span class="is-complete "></span>
									<p>Consegnato<br><span> &nbsp; </span></p>
								</div>
							</div>
						</div>
					</div>
</div>

</body>
</html>