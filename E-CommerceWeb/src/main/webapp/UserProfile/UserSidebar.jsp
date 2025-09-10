<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.squad.eshop.dao.UserDAO, com.squad.eshop.model.UserModel, com.squad.eshop.util.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>User Sidebar</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<% 
  	UserModel currUser=null; 
	if(request.getSession(false)==null || "admin".equals(session.getAttribute("role")) ){
		  response.sendRedirect("/E-CommerceWeb/Error.html");
		  return;
	}
	currUser = (UserModel)session.getAttribute("user");
	if (currUser == null) {
		  response.sendRedirect("/E-CommerceWeb/Error.html");
		  return;
	}
%>
<!-- Sidebar Container -->
<aside class="w-64 h-screen bg-white shadow-lg flex-shrink-0 flex flex-col">

  <!-- Header with title and user icon -->
  <div class="flex items-center justify-between px-6 py-4 border-b">
    <h2 class="text-xl font-bold text-red-500">Hi, <%= currUser.getUserName() %></h2>
    <ion-icon name="person-outline" class="text-2xl text-gray-600"></ion-icon>
  </div>

  <!-- Navigation Links -->
  <nav class="flex-1 px-4 py-6 overflow-y-auto">
    <ul class="space-y-3 text-sm font-medium text-gray-700">
      <li><a href="UserDashboard.jsp" class="block px-3 py-2 rounded-lg hover:bg-red-100 transition">📊 Dashboard</a></li>
      <li><a href="EditProfile.jsp" class="block px-3 py-2 rounded-lg hover:bg-red-100 transition">👤 Profile</a></li>
      <li><a href="MyOrders.jsp" class="block px-3 py-2 rounded-lg hover:bg-red-100 transition">📦 My Orders</a></li>
      <li><a href="WalletBalance.jsp" class="block px-3 py-2 rounded-lg hover:bg-red-100 transition">💰 Wallet</a></li>
      <li><a href="UserLogout.jsp" class="block px-3 py-2 rounded-lg hover:bg-red-100 transition">🚪 Logout</a></li>
    </ul>
  </nav>

</aside>

</body>
</html>