<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*, com.squad.eshop.dao.UserDAO, com.squad.eshop.model.UserModel, com.squad.eshop.util.DBConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>User Dashboard</title>
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

    <!-- Main content -->
    <main class="flex-1 p-6 overflow-y-auto" style="overflow-x: auto; scrollbar-width: none; -ms-overflow-style: none;">
      <!-- Top bar -->


      <!-- Stats cards -->
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-6">
        <div class="p-4 bg-white rounded-xl shadow hover:shadow-md">
          <h2 class="text-gray-500">My Orders</h2>
          <p class="text-2xl font-bold">12</p>
        </div>
        <div class="p-4 bg-white rounded-xl shadow hover:shadow-md">
          <h2 class="text-gray-500">Wishlist Items</h2>
          <p class="text-2xl font-bold">5</p>
        </div>
        <div class="p-4 bg-white rounded-xl shadow hover:shadow-md">
          <h2 class="text-gray-500">Coupons Used</h2>
          <p class="text-2xl font-bold">3</p>
        </div>
        <div class="p-4 bg-white rounded-xl shadow hover:shadow-md">
          <h2 class="text-gray-500">Wallet Balance</h2>
          <p class="text-2xl font-bold">₹1,250</p>
        </div>
      </div>

      <!-- Recent Orders Table -->
      <div class="bg-white rounded-xl shadow p-6 mb-6">
        <div class="flex justify-between items-center mb-4">
          <h2 class="text-xl font-semibold">Recent Orders</h2>
          <button class="bg-red-500 text-white px-4 py-2 rounded-lg hover:bg-red-600">
            <a href="MyOrders.jsp">View All</a>
          </button>
        </div>
        <table class="w-full border-collapse">
          <thead>
            <tr class="bg-gray-100 text-left">
              <th class="p-3">Order ID</th>
              <th class="p-3">Date</th>
              <th class="p-3">Status</th>
              <th class="p-3">Total</th>
              <th class="p-3">Action</th>
            </tr>
          </thead>
          <tbody>
            <tr class="border-b">
              <td class="p-3">#ORD1023</td>
              <td class="p-3">Sep 5, 2025</td>
              <td class="p-3 text-green-600">Delivered</td>
              <td class="p-3">₹1,250</td>
              <td class="p-3"><a href="#" class="text-red-500 hover:underline">View</a></td>
            </tr>
            <tr class="border-b">
              <td class="p-3">#ORD1019</td>
              <td class="p-3">Aug 28, 2025</td>
              <td class="p-3 text-yellow-600">Shipped</td>
              <td class="p-3">₹2,400</td>
              <td class="p-3"><a href="#" class="text-red-500 hover:underline">View</a></td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- Coupons Section -->
      <div class="bg-white rounded-xl shadow p-6">
        <div class="flex justify-between items-center mb-4">
          <h2 class="text-xl font-semibold">Available Coupons</h2>
          <button class="bg-green-500 text-white px-4 py-2 rounded-lg hover:bg-green-600">
            <a href="Coupons.jsp">Apply Coupon</a>
          </button>
        </div>
        <ul class="space-y-3">
          <li class="flex justify-between items-center border-b pb-2">
            <span>WELCOME10 – 10% off</span>
            <button class="text-green-600">Apply</button>
          </li>
          <li class="flex justify-between items-center border-b pb-2">
            <span>FREESHIP – Free Shipping</span>
            <button class="text-green-600">Apply</button>
          </li>
        </ul>
      </div>
    </main>
  </div>
</body>
</html>