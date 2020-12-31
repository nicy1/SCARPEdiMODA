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

import it.begear.corso.dao.DAOscarpaImpl;
import it.begear.corso.entity.Scarpa;


@WebServlet("/DetailItemServlet")
public class DetailItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOscarpaImpl daoscarpa = context.getBean(DAOscarpaImpl.class);
		
		String scarpacode = (String) request.getParameter("codice");
		if (scarpacode != null) {
			Scarpa scarpa = daoscarpa.findByCode(scarpacode);
			String parameters = "codice=" + scarpacode + "&costo=" + scarpa.getCosto() + "&dispo="
                              + scarpa.getDisponibilita() + "&brand=" + scarpa.getBrand() 
                              + "&descrizione=" + scarpa.getDescrizione()
                              + "&colore=" + scarpa.getColor() + "&numero=" + scarpa.getNumero().getNum()
                              + "&genere=" + scarpa.getGender();                  // dettagli della scarpa
			response.sendRedirect("shoppingcart.jsp?"+parameters);   
		} else {
			response.sendRedirect("404.html?foundProduct=NO");  // not found page and product (scarpa)
		}     	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
