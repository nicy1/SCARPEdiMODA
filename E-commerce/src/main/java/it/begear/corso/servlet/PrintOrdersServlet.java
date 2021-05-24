package it.begear.corso.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import it.begear.corso.dao.DAOordineImpl;
import it.begear.corso.dao.DAOutenteImpl;
import it.begear.corso.entity.Ordine;
import it.begear.corso.entity.Utente;



@WebServlet("/PrintOrdersServlet")
public class PrintOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOordineImpl daoOrdine = context.getBean(DAOordineImpl.class);
		
		HttpSession session = request.getSession(false);          // get la sessione esistente
		if(session != null) {
			Utente utente = (Utente) session.getAttribute("loggedIn");
			List<Ordine> ordineList = daoOrdine.getUserOrders(utente.getId());
			
			request.setAttribute("ordini", ordineList);      
			request.getRequestDispatcher("userOrders.jsp").forward(request, response);   
		}
		else {  // non c'e sessione esistente
				response.sendRedirect("loginRegister.jsp");      // tornare nel login page		
		}			
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	
}
