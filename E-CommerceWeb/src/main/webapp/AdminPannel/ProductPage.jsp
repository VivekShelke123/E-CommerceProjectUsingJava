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
<body class="bg-emerald-50 text-gray-800 overflow-x-hidden">

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
        <main class="flex-1 p-6 overflow-y-auto" style="overflow-x: auto; scrollbar-width: none; -ms-overflow-style: none;">
            <!-- Top bar -->
            <div class="flex items-center justify-between mb-6">
              <h1 class="text-2xl font-bold">Manage Products</h1>
              <div class="flex items-center gap-4">
                <input type="text" placeholder="Search product to edit..."
                       class="px-3 py-2 border rounded-lg w-64" />
                <img src="https://via.placeholder.com/40" alt="Admin"
                     class="w-10 h-10 rounded-full border">
              </div>
            </div>
      
            <!-- Add Product Form -->
            <div class="bg-white rounded-xl shadow p-6 mb-6">
              <h2 class="text-xl font-semibold mb-4">Add New Product</h2>
              <form class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                <!-- Image URL -->
                <div>
                  <label class="block mb-1 text-gray-600">Image URL</label>
                  <input type="url" placeholder="https://example.com/product.jpg"
                         class="w-full px-3 py-2 border rounded-lg" required />
                </div>
                <!-- Product Name -->
                <div>
                  <label class="block mb-1 text-gray-600">Product Name</label>
                  <input type="text" placeholder="Enter product name"
                         class="w-full px-3 py-2 border rounded-lg" required />
                </div>
                <!-- Description -->
                <div class="sm:col-span-2">
                  <label class="block mb-1 text-gray-600">Description</label>
                  <textarea placeholder="Enter product description..."
                            class="w-full px-3 py-2 border rounded-lg" rows="3"></textarea>
                </div>
                <!-- Price -->
                <div>
                  <label class="block mb-1 text-gray-600">Price ($)</label>
                  <input type="number" placeholder="120"
                         class="w-full px-3 py-2 border rounded-lg" required />
                </div>
                <!-- Quantity -->
                <div>
                  <label class="block mb-1 text-gray-600">Quantity</label>
                  <input type="number" placeholder="50"
                         class="w-full px-3 py-2 border rounded-lg" required />
                </div>
                <!-- Category -->
                <div class="sm:col-span-2">
                  <label class="block mb-1 text-gray-600">Category</label>
                  <select class="w-full px-3 py-2 border rounded-lg">
                    <option>Men's</option>
                    <option>Women's</option>
                    <option>Jewelry</option>
                    <option>Perfume</option>
                    <option>Other</option>
                  </select>
                </div>
                <!-- Submit Button -->
                <div class="sm:col-span-2 flex justify-end">
                  <button type="submit"
                          class="bg-red-500 text-white px-6 py-2 rounded-lg hover:bg-red-600">
                    + Add Product
                  </button>
                </div>
              </form>
            </div>
      
            <!-- Low Stock Alerts -->
            <div class="bg-white rounded-xl shadow p-6 mb-6">
              <h2 class="text-xl font-semibold mb-4">Low Stock Alerts</h2>
              <ul class="space-y-2">
                <li class="flex justify-between items-center p-3 border rounded-lg bg-red-50">
                  <span class="text-gray-700">Adidas Jacket – Only 3 left!</span>
                  <button class="text-sm bg-red-500 text-white px-3 py-1 rounded">Restock</button>
                </li>
                <li class="flex justify-between items-center p-3 border rounded-lg bg-red-50">
                  <span class="text-gray-700">Nike Shoes – Only 2 left!</span>
                  <button class="text-sm bg-red-500 text-white px-3 py-1 rounded">Restock</button>
                </li>
              </ul>
            </div>
      
            <!-- Recently Added Products -->
            <div class="bg-white rounded-xl shadow p-6">
              <h2 class="text-xl font-semibold mb-4">Recently Added Products</h2>
              <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
                <!-- Card 1 -->
                <div class="border rounded-lg p-4 flex flex-col items-center text-center">
                  <img src="https://via.placeholder.com/150" alt="Product" class="w-24 h-24 mb-3">
                  <h3 class="font-semibold">Nike Shoes</h3>
                  <p class="text-gray-500 text-sm">$120 · Qty: 50</p>
                </div>
                <!-- Card 2 -->
                <div class="border rounded-lg p-4 flex flex-col items-center text-center">
                  <img src="https://via.placeholder.com/150" alt="Product" class="w-24 h-24 mb-3">
                  <h3 class="font-semibold">Adidas Jacket</h3>
                  <p class="text-gray-500 text-sm">$90 · Qty: 30</p>
                </div>
                <!-- Card 3 -->
                <div class="border rounded-lg p-4 flex flex-col items-center text-center">
                  <img src="https://via.placeholder.com/150" alt="Product" class="w-24 h-24 mb-3">
                  <h3 class="font-semibold">Gold Necklace</h3>
                  <p class="text-gray-500 text-sm">$350 · Qty: 10</p>
                </div>
              </div>
            </div>
          </main>
      
</div>

</body>
</html>
