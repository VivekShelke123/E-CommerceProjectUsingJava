package com.squad.eshop.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.squad.eshop.dao.UserDAO;
import com.squad.eshop.dao.IUserDAO;
import com.squad.eshop.model.UserModel;
import com.squad.eshop.service.IUserService;
import com.squad.eshop.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private IUserService userService;

    @Override
    public void init() throws ServletException {
        // Inject dependency manually
        IUserDAO userDao = new UserDAO();
        userService = new UserService(userDao);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userEmail = request.getParameter("email");
		String userPass = request.getParameter("password");
		
		UserModel user = userService.loginUser(userEmail, userPass);
		
		if(user!=null) {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			out.println("<html><body>");
			out.println("<script type='text/javascript'>");
			out.println("alert('Login successful!');");
			out.println("</script>");
			out.println("</body></html>");
		}else {
			response.sendRedirect("Error.html");
		}
		
	}

}
