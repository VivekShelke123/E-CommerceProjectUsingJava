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
import com.squad.eshop.dao.AdminDao;
import com.squad.eshop.dao.IAdminDAO;
import com.squad.eshop.model.AdminModel;
import com.squad.eshop.model.UserModel;
import com.squad.eshop.service.AdminService;
import com.squad.eshop.service.IAdminService;
import com.squad.eshop.service.IUserService;
import com.squad.eshop.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private IUserService userService;
	private IAdminService adminService;

    @Override
    public void init() throws ServletException {
        // Inject dependency manually
        IUserDAO userDao = new UserDAO();
        IAdminDAO adminDao = new AdminDao();
        
        userService = new UserService(userDao);
        adminService = new AdminService(adminDao); 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		String role = request.getParameter("role");
		
		if("admin".equals(role)) {
			
			AdminModel admin = adminService.loginAdmin(email, pass);
			
			if(admin!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("admin", admin);
				session.setAttribute("role","admin");
				response.sendRedirect("/E-CommerceWeb");
				
			}else {
				response.sendRedirect("Error.html");
			}
			
		}
		else if("user".equals(role)) {
			UserModel user = userService.loginUser(email, pass);
			
			if(user!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				session.setAttribute("role","user");
				response.sendRedirect("/E-CommerceWeb");
				
			}else {
				response.sendRedirect("Error.html");
			}
		}
		else {
			response.sendRedirect("Error.html");
		}
		
	}

}
