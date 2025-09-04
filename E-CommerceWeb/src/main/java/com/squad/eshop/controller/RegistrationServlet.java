package com.squad.eshop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.squad.eshop.service.UserService;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("name");
		String userEmail = request.getParameter("email");
		String userPass = request.getParameter("password");
		String userAdd = request.getParameter("address");
		String userPhone = request.getParameter("phone");
		
		UserService userService = new UserService();
		
		boolean success = userService.registerUser(userName, userEmail, userPass, userAdd, userPhone);
		
		if(success) {
			response.sendRedirect("Login.html");
		}else {
			response.sendRedirect("Error.html");
		}
	}

}
