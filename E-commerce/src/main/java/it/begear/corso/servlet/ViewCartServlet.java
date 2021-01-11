package it.begear.corso.servlet;
import java.io.IOException;
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
		
		HttpSession session = request.getSession(false); // sessione esistente
		Utente utente = (Utente) session.getAttribute("loggedIn");
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		DAOscarpaImpl daoscarpa = context.getBean(DAOscarpaImpl.class);
		Map<Integer, Integer> scarpaList = utente.getCarrello().getScarpe();
		String parameters = "";
		double costo_totale = 0;
		
		
		if (scarpaList.isEmpty())  {         // se non ci sono scarpe
			 parameters += "<br/>"
					    +  "<h3> Non ci sono scarpe. </h3>"
	                    +  "<br/><br/>";
		} else {
			
			int index = 1;

			Set <Integer> idList = scarpaList.keySet();
			
			
			for(Integer id : idList ) {
			Scarpa scarpa = daoscarpa.findByID(id);
		
			parameters += "<tr>" 
		        	+ "<td><img src='IMAGES/scarpe/" + scarpa.getCodice() + ".jpg' alt='Shoes " + index + "'/></td> "
		        	+ "<td>" + scarpa.getDescrizione() + "</td>"
		            + "<td align='center'><input type='text' value='1' style='width: 20px; text-align: right/> </td>"
		            + "<td align='right'>" + scarpa.getCosto() + " € </td> " 
		            + "<td align='center'> <a href='#'><img src='images/remove_x.gif' alt='remove' /><br />Remove</a> </td>"
		            + "</tr>";
			index++;
			costo_totale += scarpa.getCosto();
		}
			
		}
		
		request.setAttribute("scarpe", parameters);
		request.setAttribute("costo_totale", costo_totale);
		RequestDispatcher dispatcher = request.getRequestDispatcher("shoppingcart.jsp");
		dispatcher.forward(request, response); 
		
	}
		

		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	
}
