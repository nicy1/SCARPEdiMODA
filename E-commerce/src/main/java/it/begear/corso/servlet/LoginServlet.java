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

import it.begear.corso.dao.DAOutente;
import it.begear.corso.dao.DAOutenteImpl;
import it.begear.corso.entity.Carrello;
import it.begear.corso.entity.Utente;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;

	public LoginServlet() {}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOutenteImpl daoUtente = context.getBean(DAOutenteImpl.class);
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Utente utente = daoUtente.findByCredentials(email, password);
		String destPage = "loginRegister.jsp";
		
		if(utente != null) {
			HttpSession session = request.getSession();
			utente.setCarrello(new Carrello(utente.getId()));
			session.setAttribute("loggedIn", utente);
			session.setAttribute("loggedIn_ID", utente);
			session.setAttribute("loggedIn_NOME", utente);
			session.setAttribute("loggedIn_COGNOME", utente);
			session.setAttribute("loggedIn_EMAIL", utente);
			
			session.setAttribute("costo_totale", 0.0);             // prezzo iniziale del carrello
			
			destPage = "account.jsp";
		}
		else {
			String message = "Invalid email/password";
			request.setAttribute("message", message);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
		dispatcher.forward(request, response);
	}
}