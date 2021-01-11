package it.begear.corso.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import it.begear.corso.dao.DAOutenteImpl;
import it.begear.corso.dao.DAOordineImpl;
import it.begear.corso.entity.Ordine;
import it.begear.corso.entity.Utente;


@WebFilter(urlPatterns = { "/account.jsp", "/checkout.jsp", "/shoppingcart.jsp", "/subscribe.jsp", "/AddItemCartServlet"})
public class LoginFilter implements Filter {

   
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		 HttpServletRequest request = (HttpServletRequest) req;
	     HttpServletResponse response = (HttpServletResponse) res;
	     HttpSession session = request.getSession(false);           // mettiamo false per non fare creare una nuova sessione, 
	     
	     // stiamo controllando se l'utente e' gia' loggato
	     if (session == null || session.getAttribute("loggedIn") == null) {
	          response.sendRedirect("loginRegister.jsp");         // se e' nulla la sessione o l'attributo loggIn, torniamo nella pagina di login 
	     }
	     else {    // l'utente e' gia loggato
	    	 
	    	 ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
	 	     DAOordineImpl daoOrdine = context.getBean(DAOordineImpl.class);
	 		 DAOutenteImpl daoUtente = context.getBean(DAOutenteImpl.class);
	 		 
	 		 // richiesta per visualizzare la paggina "checkout.jsp" 
	    	 if (request.getRequestURI().contains("checkout.jsp")) {      
	    		  Utente utente = (Utente) session.getAttribute("loggedIn"); 
	    		  double prezzoCarrello = utente.getCarrello().getPrezzo();
	    		  session.setAttribute("prezzo_totale", prezzoCarrello);       // setta il prezzo totale del carrello da visualizzare in "checkout.jsp"
	    	 }    	 
	    	 
	         chain.doFilter(req, res);     // continuare il percorso della richiesta ....
	     }
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
