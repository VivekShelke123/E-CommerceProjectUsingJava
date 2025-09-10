package com.squad.eshop.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.squad.eshop.dao.Category.CategoryDAO;
import com.squad.eshop.dao.Category.ICategoryDAO;
import com.squad.eshop.model.CategoryModel;
import com.squad.eshop.service.Category.CategoryService;
import com.squad.eshop.service.Category.ICategoryService;


/**
 * Servlet implementation class CategoryLoadServlet
 */
@WebServlet("/CategoryLoadServlet")
public class CategoryLoadServlet extends HttpServlet {
	
	private ICategoryService categoryService;

	public void init()throws ServletException {
		ICategoryDAO categoryDao = new CategoryDAO();
		this.categoryService = new CategoryService(categoryDao);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		System.out.println("Inside get");
		
		if(session == null ||session.getAttribute("categoryChange")==null || "false".equals((String)session.getAttribute("categoryChange"))) {
			ArrayList<CategoryModel> categoryList = categoryService.getAllCategory();
	        getServletContext().setAttribute("categoryList", categoryList);
	        System.out.println("Loaded categories: " + categoryList.size());
	        if(session != null) {
	        	session.setAttribute("categoryChange", "true");
	        }
		}
		
		String redirectTo = request.getParameter("redirectTo");
		System.out.println(redirectTo);
		if (redirectTo == null || redirectTo.isEmpty()) {
		    redirectTo = request.getContextPath()+"/"; // default fallback
		}
		response.sendRedirect(redirectTo);
	}



}
