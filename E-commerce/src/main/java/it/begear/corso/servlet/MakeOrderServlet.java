package it.begear.corso.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import it.begear.corso.dao.DAOordineImpl;
import it.begear.corso.dao.DAOutente;
import it.begear.corso.dao.DAOutenteImpl;
import it.begear.corso.entity.Ordine;
import it.begear.corso.entity.Utente;

@WebServlet("/MakeOrderServlet")
public class MakeOrderServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;

	public MakeOrderServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOordineImpl daoOrdine = context.getBean(DAOordineImpl.class);
		DAOutenteImpl daoUtente = context.getBean(DAOutenteImpl.class);
		
		HttpSession session = request.getSession(false);   // get la sessione esistente
		if(session != null) {
			Utente utente = (Utente) session.getAttribute("loggedIn");
   		    Ordine ordine = utente.getCarrello().acquista();          
            daoOrdine.create(ordine);      // Crea l'ordine nel database
		}
		
		response.sendRedirect("checkout.jsp?ordine=OK");
	}
	
	
}

