package it.begear.corso.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import it.begear.corso.entity.Carrello;
import it.begear.corso.entity.Utente;



@WebServlet("/ViewCartServlet")
public class ViewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public ViewCartServlet() {}
  

//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession(false); // sessione esistente
//		Utente utente = (Utente) session.getAttribute("loggedIn");
//		utente.getCarrello()
//		Carrello cart = (Carrello) request.getSession().getAttribute("carrello");
//		if (cart != null) {
//		    // print items
//		} else {
//		    // print an error
//		}
//        response.sendRedirect("Login.jsp?status=REGISTERED");     // redirect in the login page	
//	}

	
//	<tr>
//	<td><img src="IMAGES/scarpe/01.jpg" alt="image 1" /></td> 
//	<td>Etiam in tellus (Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow">XHTML</a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow">CSS</a>)</td> 
//    <td align="center"><input type="text" value="1" style="width: 20px; text-align: right" /> </td>
//    <td align="right">€100 </td> 
//    <td align="right">€100 </td>
//    <td align="center"> <a href="#"><img src="images/remove_x.gif" alt="remove" /><br />Remove</a> </td>
//    </tr>
	
	
	
	
	
	
	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	
}
