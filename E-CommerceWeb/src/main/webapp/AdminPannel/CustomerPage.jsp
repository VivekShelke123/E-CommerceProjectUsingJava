<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin Dashboard</title>
<script src="https://cdn.tailwindcss.com"></script>
<style>
    /* Hide scrollbar but allow scroll */
    .no-scrollbar::-webkit-scrollbar {
    display: none;
    }
    .no-scrollbar {
    -ms-overflow-style: none;  /* IE & Edge */
    scrollbar-width: none;     /* Firefox */
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
    if(request.getSession(false) == null || 
       session.getAttribute("role") == null || 
       "user".equals(session.getAttribute("role"))){
        response.sendRedirect("/E-CommerceWeb/Error.html");
    }
%>
<div class="flex h-screen">
    <%@ include file="AdminNavBar.html" %>

    <!-- Main content -->
    <!-- Main content -->
    <main class="flex-1 p-6 overflow-y no-scrollbar">
        <!-- Top bar -->
        <div class="flex items-center justify-between mb-6">
          <h1 class="text-2xl font-bold">Customers</h1>
          <div class="flex items-center gap-4">
            <input type="text" placeholder="Search customer..."
                   class="px-3 py-2 border rounded-lg w-64" />
            <img src="https://via.placeholder.com/40" alt="Admin"
                 class="w-10 h-10 rounded-full border">
          </div>
        </div>
      
        <!-- Customer Stats -->
        <div class="grid grid-cols-1 sm:grid-cols-3 gap-6 mb-6">
          <div class="p-4 bg-white rounded-xl shadow">
            <h2 class="text-gray-500">Total Customers</h2>
            <p class="text-2xl font-bold">1,250</p>
          </div>
          <div class="p-4 bg-white rounded-xl shadow">
            <h2 class="text-gray-500">New This Month</h2>
            <p class="text-2xl font-bold">120</p>
          </div>
          <div class="p-4 bg-white rounded-xl shadow">
            <h2 class="text-gray-500">VIP Customers</h2>
            <p class="text-2xl font-bold">80</p>
          </div>
        </div>
      
        <!-- Customer List -->
        <div class="bg-white rounded-xl shadow p-6 mb-6">
          <h2 class="text-xl font-semibold mb-4">Customer List</h2>
          <table class="w-full border-collapse">
            <thead>
              <tr class="bg-gray-100 text-left">
                <th class="p-3">Name</th>
                <th class="p-3">Email</th>
                <th class="p-3">Phone</th>
                <th class="p-3">Orders</th>
                <th class="p-3">Total Spent</th>
                <th class="p-3">Actions</th>
              </tr>
            </thead>
            <tbody>
              <tr class="border-b">
                <td class="p-3">John Doe</td>
                <td class="p-3">john@example.com</td>
                <td class="p-3">+1 555 123 456</td>
                <td class="p-3">25</td>
                <td class="p-3">$2,300</td>
                <td class="p-3 flex gap-2">
                  <button class="px-3 py-1 bg-blue-500 text-white rounded">View</button>
                  <button class="px-3 py-1 bg-red-500 text-white rounded">Delete</button>
                </td>
              </tr>
              <tr class="border-b">
                <td class="p-3">Jane Smith</td>
                <td class="p-3">jane@example.com</td>
                <td class="p-3">+1 555 987 654</td>
                <td class="p-3">15</td>
                <td class="p-3">$1,200</td>
                <td class="p-3 flex gap-2">
                  <button class="px-3 py-1 bg-blue-500 text-white rounded">View</button>
                  <button class="px-3 py-1 bg-red-500 text-white rounded">Delete</button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      
        <!-- Recent Signups -->
        <div class="bg-white rounded-xl shadow p-6">
          <h2 class="text-xl font-semibold mb-4">Recent Signups</h2>
          <ul class="space-y-3">
            <li class="flex justify-between items-center border-b pb-2">
              <span>Michael Brown – michael@example.com</span>
              <span class="text-sm text-gray-500">Joined 2 days ago</span>
            </li>
            <li class="flex justify-between items-center border-b pb-2">
              <span>Sara Wilson – sara@example.com</span>
              <span class="text-sm text-gray-500">Joined 5 days ago</span>
            </li>
          </ul>
        </div>
      </main>
      
  
</div>

</body>
</html>
