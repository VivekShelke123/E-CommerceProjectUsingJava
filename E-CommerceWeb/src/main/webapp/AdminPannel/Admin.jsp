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
        <main class="flex-1 p-6 overflow-y-auto" style="overflow-x: auto; scrollbar-width: none; -ms-overflow-style: none;">
        <!-- Top bar -->
        <div class="flex items-center justify-between mb-6">
            <h1 class="text-2xl font-bold">Dashboard</h1>
            <div class="flex items-center gap-4">
            <input type="text" placeholder="Search..."
                    class="px-3 py-2 border rounded-lg" />
            <img src="https://via.placeholder.com/40" alt="Admin"
                class="w-10 h-10 rounded-full border">
            </div>
        </div>

        <!-- Stats cards -->
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-6">
            <div class="p-4 bg-white rounded-xl shadow hover:shadow-md">
            <h2 class="text-gray-500">Total Products</h2>
            <p class="text-2xl font-bold">120</p>
            </div>
            <div class="p-4 bg-white rounded-xl shadow hover:shadow-md">
            <h2 class="text-gray-500">Active Coupons</h2>
            <p class="text-2xl font-bold">5</p>
            </div>
            <div class="p-4 bg-white rounded-xl shadow hover:shadow-md">
            <h2 class="text-gray-500">Orders Today</h2>
            <p class="text-2xl font-bold">23</p>
            </div>
            <div class="p-4 bg-white rounded-xl shadow hover:shadow-md">
            <h2 class="text-gray-500">Customers</h2>
            <p class="text-2xl font-bold">340</p>
            </div>
        </div>

        <!-- Products Table -->
        <div class="bg-white rounded-xl shadow p-6 mb-6">
            <div class="flex justify-between items-center mb-4">
            <h2 class="text-xl font-semibold">Manage Products</h2>
            <button class="bg-red-500 text-white px-4 py-2 rounded-lg hover:bg-red-600"><a href="ProductPage.jsp">+ Add Product</a></button>
            </div>
            <table class="w-full border-collapse">
            <thead>
                <tr class="bg-gray-100 text-left">
                <th class="p-3">Product</th>
                <th class="p-3">Price</th>
                <th class="p-3">Stock</th>
                <th class="p-3">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr class="border-b">
                <td class="p-3">Nike Shoes</td>
                <td class="p-3">$120</td>
                <td class="p-3">50</td>
                <td class="p-3 flex gap-2">
                    <button class="px-3 py-1 bg-blue-500 text-white rounded">Edit</button>
                    <button class="px-3 py-1 bg-red-500 text-white rounded">Delete</button>
                </td>
                </tr>
                <tr class="border-b">
                <td class="p-3">Adidas Jacket</td>
                <td class="p-3">$90</td>
                <td class="p-3">30</td>
                <td class="p-3 flex gap-2">
                    <button class="px-3 py-1 bg-blue-500 text-white rounded">Edit</button>
                    <button class="px-3 py-1 bg-red-500 text-white rounded">Delete</button>
                </td>
                </tr>
            </tbody>
            </table>
        </div>

        <!-- Coupons Section -->
        <div class="bg-white rounded-xl shadow p-6">
            <div class="flex justify-between items-center mb-4">
            <h2 class="text-xl font-semibold">Discount Coupons</h2>
            <button class="bg-green-500 text-white px-4 py-2 rounded-lg hover:bg-green-600"><a href="CouponPage.jsp">+ Generate Coupon</a></button>
            </div>
            <ul class="space-y-3">
            <li class="flex justify-between items-center border-b pb-2">
                <span>WELCOME10 – 10% off</span>
                <button class="text-red-500">Delete</button>
            </li>
            <li class="flex justify-between items-center border-b pb-2">
                <span>FREESHIP – Free Shipping</span>
                <button class="text-red-500">Delete</button>
            </li>
            </ul>
        </div>
        </main>
    </div>

    </body>
    </html>
