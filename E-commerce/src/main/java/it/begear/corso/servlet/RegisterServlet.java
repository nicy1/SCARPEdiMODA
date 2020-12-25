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
        
        Utente u = new Utente(nome,cognome,email,password,indirizzo);
        
        daoUtente.create(u);
        System.out.println("Creazione riuscita ");
		
        
        System.out.println("l'user è: " + nome+"-"+cognome);
        
	}

}
