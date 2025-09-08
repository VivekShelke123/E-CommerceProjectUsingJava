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


        <%@ include file="../NavBar/NavBar.jsp" %>

<div class="flex h-screen">
    <%@ include file="AdminNavBar.html" %>

    <!-- Main content -->
    <!-- Main content -->
    <main class="flex-1 p-6 overflow-y no-scrollbar">
        <!-- Top bar -->
        <div class="flex items-center justify-between mb-6">
          <h1 class="text-2xl font-bold">Orders</h1>
          <div class="flex items-center gap-4">
            <input type="text" placeholder="Search order..."
                   class="px-3 py-2 border rounded-lg w-64" />
            <img src="https://via.placeholder.com/40" alt="Admin"
                 class="w-10 h-10 rounded-full border">
          </div>
        </div>
      
        <!-- Orders Stats -->
        <div class="grid grid-cols-1 sm:grid-cols-3 gap-6 mb-6">
          <div class="p-4 bg-white rounded-xl shadow">
            <h2 class="text-gray-500">Today’s Orders</h2>
            <p class="text-2xl font-bold">45</p>
          </div>
          <div class="p-4 bg-white rounded-xl shadow">
            <h2 class="text-gray-500">Pending Orders</h2>
            <p class="text-2xl font-bold">12</p>
          </div>
          <div class="p-4 bg-white rounded-xl shadow">
            <h2 class="text-gray-500">Completed Orders</h2>
            <p class="text-2xl font-bold">210</p>
          </div>
        </div>
      
        <!-- Recent Orders Table -->
        <div class="bg-white rounded-xl shadow p-6 mb-6">
          <h2 class="text-xl font-semibold mb-4">Recent Orders</h2>
          <table class="w-full border-collapse">
            <thead>
              <tr class="bg-gray-100 text-left">
                <th class="p-3">Order ID</th>
                <th class="p-3">Customer</th>
                <th class="p-3">Date</th>
                <th class="p-3">Total</th>
                <th class="p-3">Status</th>
                <th class="p-3">Actions</th>
              </tr>
            </thead>
            <tbody>
              <tr class="border-b">
                <td class="p-3">#ORD1023</td>
                <td class="p-3">John Doe</td>
                <td class="p-3">2025-09-06</td>
                <td class="p-3">$120</td>
                <td class="p-3 text-yellow-600">Pending</td>
                <td class="p-3 flex gap-2">
                  <button class="px-3 py-1 bg-green-500 text-white rounded">Mark Shipped</button>
                  <button class="px-3 py-1 bg-red-500 text-white rounded">Cancel</button>
                </td>
              </tr>
              <tr class="border-b">
                <td class="p-3">#ORD1024</td>
                <td class="p-3">Jane Smith</td>
                <td class="p-3">2025-09-06</td>
                <td class="p-3">$90</td>
                <td class="p-3 text-green-600">Completed</td>
                <td class="p-3 flex gap-2">
                  <button class="px-3 py-1 bg-blue-500 text-white rounded">View</button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      
        <!-- Order History -->
        <div class="bg-white rounded-xl shadow p-6">
          <h2 class="text-xl font-semibold mb-4">Order History</h2>
          <table class="w-full border-collapse">
            <thead>
              <tr class="bg-gray-100 text-left">
                <th class="p-3">Order ID</th>
                <th class="p-3">Customer</th>
                <th class="p-3">Date</th>
                <th class="p-3">Total</th>
                <th class="p-3">Status</th>
              </tr>
            </thead>
            <tbody>
              <tr class="border-b">
                <td class="p-3">#ORD1005</td>
                <td class="p-3">Alex Johnson</td>
                <td class="p-3">2025-08-28</td>
                <td class="p-3">$200</td>
                <td class="p-3 text-green-600">Completed</td>
              </tr>
              <tr class="border-b">
                <td class="p-3">#ORD1006</td>
                <td class="p-3">Emily Davis</td>
                <td class="p-3">2025-08-29</td>
                <td class="p-3">$75</td>
                <td class="p-3 text-red-600">Cancelled</td>
              </tr>
            </tbody>
          </table>
        </div>
      </main>
      
  
</div>

</body>
</html>
