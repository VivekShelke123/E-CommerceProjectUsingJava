<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.squad.eshop.model.UserModel" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page import="com.squad.eshop.dao.UserDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>User Profile</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    .no-scrollbar::-webkit-scrollbar {
      display: none;
    }
    .no-scrollbar {
      -ms-overflow-style: none;
      scrollbar-width: none;
    }
  </style>
</head>
<body class="bg-gray-100 text-gray-800 overflow-x-hidden">
	<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
	%>

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
      <form action="UpdateProfileServlet" method="post" class="bg-white rounded-xl shadow p-6 space-y-6">

        <!-- Username -->
        <div>
          <label class="block text-sm font-medium text-gray-600 mb-1">Username</label>
          <input type="text" name="username" value="<%= currUser.getUserName() %>" class="w-full p-2 border rounded-lg" />
        </div>

        <!-- Email -->
        <div>
          <label class="block text-sm font-medium text-gray-600 mb-1">Email</label>
          <input type="email" name="email" value="<%= currUser.getUserEmail() %>" class="w-full p-2 border rounded-lg" />
        </div>

        <!-- Phone -->
        <div>
          <label class="block text-sm font-medium text-gray-600 mb-1">Phone Number</label>
          <input type="tel" name="phone" value="<%= currUser.getUserPhone() %>" class="w-full p-2 border rounded-lg" />
        </div>

        <!-- Address -->
        <div>
          <label class="block text-sm font-medium text-gray-600 mb-1">Address</label>
          <textarea name="address" class="w-full p-2 border rounded-lg"><%= currUser.getUserAdd() %></textarea>
        </div>

        <!-- Change Password Toggle -->
        <div>
          <button type="button" onclick="togglePasswordFields()" class="text-red-500 hover:underline">
            Change Password
          </button>
        </div>

        <!-- Hidden Password Fields -->
        <div id="passwordFields" class="space-y-4 hidden">
          <div>
            <label class="block text-sm font-medium text-gray-600 mb-1">New Password</label>
            <input type="password" name="newPassword" class="w-full p-2 border rounded-lg" />
          </div>
          <div>
            <label class="block text-sm font-medium text-gray-600 mb-1">Confirm Password</label>
            <input type="password" name="confirmPassword" class="w-full p-2 border rounded-lg" />
          </div>
        </div>

        <!-- Save Button -->
        <div>
          <button type="submit" class="bg-red-500 text-white px-6 py-2 rounded-lg hover:bg-red-600">
            Save Changes
          </button>
        </div>
      </form>
    </main>
  </div>

  <!-- JavaScript for toggling password fields -->
  <script>
    function togglePasswordFields() {
      const fields = document.getElementById("passwordFields");
      fields.classList.toggle("hidden");
    }
  </script>

</body>
</html>