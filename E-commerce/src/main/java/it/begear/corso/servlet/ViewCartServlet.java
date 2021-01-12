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
		
		HttpSession session = request.getSession(false); // sessione esistente
		Utente utente = (Utente) session.getAttribute("loggedIn");
		Map<Integer, Integer> scarpaList = utente.getCarrello().getScarpe();
		String parameters = "";
		double costo_totale = 0;
				
		if (scarpaList.isEmpty())  {         // se non ci sono scarpe
			 parameters += "<tr>"
					    +  "<td><h3>Il carrello è vuoto. </h3></td>"
					    + "</tr> \n";
		} else {
			
			int index = 1;
			Set <Integer> idList = scarpaList.keySet();
		
			for(Integer id : idList ) {
			    Scarpa scarpa = daoscarpa.findByID(id);
		  
			    parameters += "<tr>" 
		        	       + "<td><img src='IMAGES/scarpe/" + scarpa.getCodice() + ".jpg' alt='Shoes " + index + "'/></td> "
		        	       + "<td>" + scarpa.getDescrizione() + "</td>"
		                   + "<td align='center'>"
		        	       + "<form action='AddItemCartServlet?codice="+scarpa.getCodice()+"' method='get'>"
		                   + "   <input type='text' name='quantita' value='1' style='width: 20px; text-align: right/>"
		        	       + "</form>"
		                   + "<td><input type='button' style='width:100%; height:100%;' value='Aggiorna'></td>"
		                   + "</td>"		     
		                   + "<td align='right'> </td>"
		                   + "<td align='right'>" + scarpa.getCosto() + " € </td> "
		                   + "<td align='center'> <a href='AddItemCartServlet?codice="+scarpa.getCodice()+"&amp;quantita=0'><img src='IMAGES/remove_x.gif' /><br />Cancella</a> </td>"
		                   + "</tr> \n";
		
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
