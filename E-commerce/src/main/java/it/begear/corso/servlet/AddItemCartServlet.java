package it.begear.corso.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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

import it.begear.corso.dao.DAOscarpaImpl;
import it.begear.corso.dao.DAOutenteImpl;
import it.begear.corso.entity.Carrello;
import it.begear.corso.entity.Scarpa;
import it.begear.corso.entity.Utente;


@WebServlet("/AddItemCartServlet")
public class AddItemCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOscarpaImpl daoscarpa = context.getBean(DAOscarpaImpl.class);
		
		String scarpacode = request.getParameter("codice");
		if (scarpacode == null ) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("allProducts.jsp");
			dispatcher.forward(request, response);
		}
		
		Integer quantita = Integer.parseInt(request.getParameter("quantita"));
		Scarpa scarpa = daoscarpa.findByCode(scarpacode);
	    if(scarpa == null) {
		   // Non c'e scarpa con "codice" nel DB
		   response.sendRedirect("404.jsp?foundProduct=NO");  // not found page and product (scarpa)
	    }
			
		if (quantita == 0) {   // Cancellare una scarpa nel carrello
			HttpSession session = request.getSession(false);      // get la sessione esistente
			Utente utente = (Utente) session.getAttribute("loggedIn");
			utente.getCarrello().removeScarpa(scarpa);
			scarpa.setDisponibilita(scarpa.getDisponibilita() + 1);
			daoscarpa.update(scarpa, scarpa.getId());
			response.sendRedirect("ViewCartServlet");
		}
		
		if (quantita == 1)  {          
		
		        int dispo = scarpa.getDisponibilita();
			    if(dispo >= quantita) {                   // qta disponibile
				   scarpa.setDisponibilita(dispo - quantita);        // update della disponibilita
				   daoscarpa.update(scarpa, scarpa.getId());
				   HttpSession session = request.getSession(false); // get la sessione esistente
				   Utente utente = (Utente) session.getAttribute("loggedIn");
				   String check = request.getParameter("check");
				   utente.getCarrello().addScarpa(scarpa, check);
				   session.setAttribute("loggedIn", utente);
				   response.sendRedirect("ViewCartServlet");
			    }
			    else {                                     // qta non disponibile  
			     	String referer = request.getHeader("referer");
			     	String[] stringhe = referer.split("/");
				    String paginaDiRiferimento = stringhe[stringhe.length-1];
			     	response.sendRedirect(paginaDiRiferimento+"?disponibile=NO");    	
			    }
		}
		
		if (quantita > 1)  {          		
	        int dispo = scarpa.getDisponibilita();
		    if(dispo >= quantita) {                   // qta disponibile
		       
			   scarpa.setDisponibilita(dispo - quantita);        // update della disponibilita
			   daoscarpa.update(scarpa, scarpa.getId());
			   HttpSession session = request.getSession(false); // get la sessione esistente
			   Utente utente = (Utente) session.getAttribute("loggedIn");
			   utente.getCarrello().updateCarrello(scarpa, quantita);
			   session.setAttribute("loggedIn", utente);
			   response.sendRedirect("ViewCartServlet");
		    }
		    else {                                     // qta non disponibile  
		     	String referer = request.getHeader("referer");
		     	String[] stringhe = referer.split("/");
			    String paginaDiRiferimento = stringhe[stringhe.length-1];
		     	response.sendRedirect(paginaDiRiferimento+"?disponibile=NO");    	
		    }
	}
		
		
	}
	
}
