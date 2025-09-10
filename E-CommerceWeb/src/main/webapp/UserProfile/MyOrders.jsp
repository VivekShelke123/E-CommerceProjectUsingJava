<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.squad.eshop.dao.UserDAO, com.squad.eshop.model.UserModel, com.squad.eshop.util.DBConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>My Products</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-800 overflow-x-hidden">

  <%@ include file="../NavBar/NavBar.jsp" %>
  
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
  <div class="flex h-screen">
    <%@ include file="UserSidebar.jsp" %>

    <!-- Main Content -->
    <main class="flex-1 p-6 overflow-y-auto" style="overflow-x: auto; scrollbar-width: none; -ms-overflow-style: none;">
      <h1 class="text-2xl font-bold mb-6">My Products</h1>

      <%
        String userEmail = (String) session.getAttribute("userEmail");
        int userId = -1;

        if (userEmail != null) {
          UserDAO dao = new UserDAO();
          UserModel user = dao.searchUser(userEmail);
          if (user != null) {
            userId = user.getUserId();
            session.setAttribute("userId", userId);
          }
        }
      %>

      <div class="bg-white rounded-xl shadow p-6 mb-6">
        <div class="flex justify-between items-center mb-4">
          <h2 class="text-xl font-semibold">Your Listed Products</h2>
          <button class="bg-red-500 text-white px-4 py-2 rounded-lg hover:bg-red-600">
            <a href="ProductPage.jsp">+ Add Product</a>
          </button>
        </div>

        <table class="w-full border-collapse">
          <thead>
            <tr class="bg-gray-100 text-left">
              <th class="p-3">Product Name</th>
              <th class="p-3">Price</th>
              <th class="p-3">Stock</th>
              <th class="p-3">Actions</th>
            </tr>
          </thead>
          <tbody>
            <%
              if (userId != -1) {
                Connection con = null;
                PreparedStatement ps = null;
                ResultSet rs = null;

                try {
                  con = DBConnection.getConnection();
                  ps = con.prepareStatement("SELECT * FROM ProductTable WHERE user_id = ?");
                  ps.setInt(1, userId);
                  rs = ps.executeQuery();

                  while (rs.next()) {
            %>
            <tr class="border-b">
              <td class="p-3"><%= rs.getString("product_name") %></td>
              <td class="p-3">₹<%= rs.getDouble("price") %></td>
              <td class="p-3"><%= rs.getInt("stock") %></td>
              <td class="p-3 flex gap-2">
                <a href="EditProduct.jsp?id=<%= rs.getInt("product_id") %>" class="px-3 py-1 bg-blue-500 text-white rounded hover:bg-blue-600">Edit</a>
                <a href="DeleteProduct.jsp?id=<%= rs.getInt("product_id") %>" class="px-3 py-1 bg-red-500 text-white rounded hover:bg-red-600">Delete</a>
              </td>
            </tr>
            <%
                  }
                } catch (Exception e) {
                  out.println("<tr><td colspan='4' class='p-3 text-red-500'>Error loading products: " + e.getMessage() + "</td></tr>");
                } finally {
                  if (rs != null) rs.close();
                  if (ps != null) ps.close();
                  if (con != null) con.close();
                }
              } else {
                out.println("<tr><td colspan='4' class='p-3 text-red-500'>User not found or not logged in.</td></tr>");
              }
            %>
          </tbody>
        </table>
      </div>
    </main>
  </div>
</body>
</html>