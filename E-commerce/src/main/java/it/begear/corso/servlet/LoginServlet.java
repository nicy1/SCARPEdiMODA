package it.begear.corso.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import it.begear.corso.dao.DAOutente;
import it.begear.corso.dao.DAOutenteImpl;
import it.begear.corso.entity.Utente;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;

	public LoginServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOutenteImpl daoUtente = context.getBean(DAOutenteImpl.class);
		
		

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		boolean flag = false;
		List<Utente> userList = daoUtente.read();      // control whether the user exists
    	for(Utente u : userList) {
    		if(u.getEmail().equals(email) && u.getPassword().equals(password)) {
    			flag = true;
    			break;
    		}
    	}  
    	
    	if(flag) {
    		response.getWriter().append("<script type='text/javascript'>alert('Login with success!');</script>");
    		response.sendRedirect("loginRegister.jsp?status=OK");     // user found
    	} else {
    		response.sendRedirect("loginRegister.jsp?status=DENIED");   // not found
    	}

		System.out.println("Il primo parametro è: " + email);
		System.out.println("Il secondo parametro è: " + password);
	}
}