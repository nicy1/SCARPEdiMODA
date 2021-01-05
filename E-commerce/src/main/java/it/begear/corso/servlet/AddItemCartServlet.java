package it.begear.corso.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
		String scarpacode = request.getParameter("codice");
		Integer quantita = Integer.parseInt(request.getParameter("quantita"));
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOscarpaImpl daoscarpa = context.getBean(DAOscarpaImpl.class);
		
		Scarpa scarpa = daoscarpa.findByCode("codice");
		if(scarpa == null) {
			// Non c'e scarpa con "codice" nel DB
			response.sendRedirect("404.html?foundProduct=NO");  // not found page and product (scarpa)
		}
		else {
			
			int dispo = scarpa.getDisponibilita();
			if(dispo >= quantita) {                   // qta disponibile
				scarpa.setDisponibilita(dispo - quantita);        // update della disponibilita
				daoscarpa.update(scarpa, scarpa.getId());
				HttpSession session = request.getSession(false); // get la sessione esistente
				Utente utente = (Utente) session.getAttribute("loggedIn");
				utente.getCarrello().addScarpa(scarpa);
				session.setAttribute("loggedIn", utente);
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
