//package it.begear.corso.servlet;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
//import it.begear.corso.dao.DAOEmployeeImpl;
//import it.begear.corso.entity.Employee;
//
///**
// * Servlet implementation class Login
// */
//@WebServlet("/ViewCartServlet")
//public class ViewCartServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
// //   public RegisterServlet() {}
//  
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Carrello cart = (Carrello) request.getSession().getAttribute("carrello");
//		if (cart != null) {
//		    // print items
//		} else {
//		    // print an error
//		}
//        response.sendRedirect("Login.jsp?status=REGISTERED");     // redirect in the login page	
//	}
//
//	
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
//	}
//	
//	
//	private Employee buildEmployee(HttpServletRequest request) {
//		Employee employee = new Employee();
//		employee.setFirstname(request.getParameter("firstname"));
//		employee.setFamilyname(request.getParameter("familyname"));
//		employee.setAge(Integer.parseInt(request.getParameter("age")));
//		employee.setSex(request.getParameter("sex"));
//		employee.setEmail(request.getParameter("email"));
//		employee.setPassword(request.getParameter("password"));
//		employee.setRole(request.getParameter("role"));
//		return employee;
//	}
//	
//}
