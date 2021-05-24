package it.begear.corso.servlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.annotations.Proxy;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import it.begear.corso.dao.DAOscarpaImpl;
import it.begear.corso.entity.Carrello;
import it.begear.corso.entity.Scarpa;
import it.begear.corso.entity.Utente;


@WebServlet("/ViewCartServlet")
public class ViewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public ViewCartServlet() {}
  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOscarpaImpl daoscarpa = context.getBean(DAOscarpaImpl.class);
		
		HttpSession session = request.getSession(false);       // sessione esistente
		Utente utente = (Utente) session.getAttribute("loggedIn");
		
		Map<Integer, Integer> idMap = utente.getCarrello().getScarpe();
		
		List<Scarpa> scarpaList = new ArrayList<>();
		for(Integer id : idMap.keySet() ) {
			scarpaList.add(daoscarpa.findByID(id));
		}	
		
		Carrello carrello = utente.getCarrello();
		
		request.setAttribute("scarpe", scarpaList);
		request.setAttribute("carrello", carrello);
		request.getRequestDispatcher("shoppingcart.jsp").forward(request, response); 	
	}
		

		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	
}
