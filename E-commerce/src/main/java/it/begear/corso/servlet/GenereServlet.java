package it.begear.corso.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import it.begear.corso.dao.DAOscarpaImpl;
import it.begear.corso.entity.Genere;
import it.begear.corso.entity.Scarpa;



@WebServlet("/GenereServlet")
public class GenereServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOscarpaImpl daoscarpa = context.getBean(DAOscarpaImpl.class);
		
		String g = (String) request.getParameter("genereScarpa");
		Genere genereScarpa = Genere.valueOf(g);
		String destP = genereScarpa + "Products.jsp";  // uomoProducts.jsp, donnaProducts, ecc...
		
		if (genereScarpa != null) {
			List<Scarpa> scarpaList = daoscarpa.findByGenere(genereScarpa);
			
			request.setAttribute("scarpe", scarpaList);
			request.getRequestDispatcher(destP).forward(request, response);
			
		} else {
			response.sendRedirect("404.html?foundProduct=NO");  // not found page and product (scarpa)
		}     	
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	
}
