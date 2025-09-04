package com.squad.eshop.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.squad.eshop.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userEmail = request.getParameter("email");
		String userPass = request.getParameter("password");
		
		UserService userService = new UserService();
		
		boolean success = userService.loginUser(userEmail, userPass);
		
		if(success) {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

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
