package it.begear.corso.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.*;
import it.begear.corso.dao.DAOutenteImpl;
import it.begear.corso.entity.Utente;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOutenteImpl daoUtente = context.getBean(DAOutenteImpl.class);
		
		String nome = request.getParameter("nome");
        String cognome = request.getParameter("cognome");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String indirizzo = request.getParameter("indirizzo");
        
        Utente utente = new Utente(nome,cognome,email,password,indirizzo); 
        String nonEsiste = "OK";
        
        List<Utente> utenteList = daoUtente.read();
        for(Utente u : utenteList) {                // controlla se l'utente esiste nel DB
        	 if (u.getEmail().equals(email)) {          // utente gia' registrato
        		  nonEsiste = "NO";
        		  break;
        	 }
        }
        
        if (nonEsiste.equals("OK")) {        // utente non esiste nel DB
        	daoUtente.create(utente);          
        }
        
        response.sendRedirect("loginRegister.jsp?register=" + nonEsiste);     
	}

}
