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
      <h1 class="text-2xl font-bold">Manage Coupons</h1>
      <div class="flex items-center gap-4">
        <input type="text" placeholder="Search coupon..."
               class="px-3 py-2 border rounded-lg w-64" />
        <img src="https://via.placeholder.com/40" alt="Admin"
             class="w-10 h-10 rounded-full border">
      </div>
    </div>
  
    <!-- Add Coupon Form -->
    <div class="bg-white rounded-xl shadow p-6 mb-6">
      <h2 class="text-xl font-semibold mb-4">Add New Coupon</h2>
      <form class="grid grid-cols-1 sm:grid-cols-2 gap-6">
        <!-- Coupon Code -->
        <div>
          <label class="block mb-1 text-gray-600">Coupon Code</label>
          <input type="text" placeholder="WELCOME10"
                 class="w-full px-3 py-2 border rounded-lg" required />
        </div>
        <!-- Discount Type -->
        <div>
          <label class="block mb-1 text-gray-600">Discount Type</label>
          <select class="w-full px-3 py-2 border rounded-lg">
            <option>Percentage</option>
            <option>Fixed Amount</option>
            <option>Free Shipping</option>
          </select>
        </div>
        <!-- Discount Value -->
        <div>
          <label class="block mb-1 text-gray-600">Value</label>
          <input type="number" placeholder="10"
                 class="w-full px-3 py-2 border rounded-lg" required />
        </div>
        <!-- Expiry Date -->
        <div>
          <label class="block mb-1 text-gray-600">Expiry Date</label>
          <input type="date" class="w-full px-3 py-2 border rounded-lg" required />
        </div>
        <!-- Min Order Amount -->
        <div>
          <label class="block mb-1 text-gray-600">Minimum Order ($)</label>
          <input type="number" placeholder="50"
                 class="w-full px-3 py-2 border rounded-lg" />
        </div>
        <!-- Status -->
        <div>
          <label class="block mb-1 text-gray-600">Status</label>
          <select class="w-full px-3 py-2 border rounded-lg">
            <option>Active</option>
            <option>Inactive</option>
          </select>
        </div>
        <!-- Submit Button -->
        <div class="sm:col-span-2 flex justify-end">
          <button type="submit"
                  class="bg-green-500 text-white px-6 py-2 rounded-lg hover:bg-green-600">
            + Add Coupon
          </button>
        </div>
      </form>
    </div>
  
    <!-- Coupons Expiring Soon -->
    <div class="bg-white rounded-xl shadow p-6 mb-6">
      <h2 class="text-xl font-semibold mb-4">Coupons Expiring Soon</h2>
      <ul class="space-y-2">
        <li class="flex justify-between items-center p-3 border rounded-lg bg-yellow-50">
          <span class="text-gray-700">WELCOME10 – Expires in 2 days</span>
          <button class="text-sm bg-yellow-500 text-white px-3 py-1 rounded">Extend</button>
        </li>
        <li class="flex justify-between items-center p-3 border rounded-lg bg-yellow-50">
          <span class="text-gray-700">SUMMER20 – Expires tomorrow</span>
          <button class="text-sm bg-yellow-500 text-white px-3 py-1 rounded">Extend</button>
        </li>
      </ul>
    </div>
  
    <!-- Active Coupons Table -->
    <div class="bg-white rounded-xl shadow p-6 mb-6">
      <div class="flex justify-between items-center mb-4">
        <h2 class="text-xl font-semibold">Active Coupons</h2>
      </div>
      <table class="w-full border-collapse">
        <thead>
          <tr class="bg-gray-100 text-left">
            <th class="p-3">Code</th>
            <th class="p-3">Type</th>
            <th class="p-3">Value</th>
            <th class="p-3">Expiry</th>
            <th class="p-3">Status</th>
            <th class="p-3">Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr class="border-b">
            <td class="p-3">WELCOME10</td>
            <td class="p-3">Percentage</td>
            <td class="p-3">10%</td>
            <td class="p-3">2025-09-10</td>
            <td class="p-3 text-green-600">Active</td>
            <td class="p-3 flex gap-2">
              <button class="px-3 py-1 bg-blue-500 text-white rounded">Edit</button>
              <button class="px-3 py-1 bg-red-500 text-white rounded">Delete</button>
            </td>
          </tr>
          <tr class="border-b">
            <td class="p-3">FREESHIP</td>
            <td class="p-3">Free Shipping</td>
            <td class="p-3">-</td>
            <td class="p-3">2025-09-15</td>
            <td class="p-3 text-green-600">Active</td>
            <td class="p-3 flex gap-2">
              <button class="px-3 py-1 bg-blue-500 text-white rounded">Edit</button>
              <button class="px-3 py-1 bg-red-500 text-white rounded">Delete</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  
    <!-- Coupons History -->
    <div class="bg-white rounded-xl shadow p-6">
      <h2 class="text-xl font-semibold mb-4">Coupons History</h2>
      <table class="w-full border-collapse">
        <thead>
          <tr class="bg-gray-100 text-left">
            <th class="p-3">Code</th>
            <th class="p-3">Type</th>
            <th class="p-3">Value</th>
            <th class="p-3">Expired On</th>
            <th class="p-3">Usage</th>
          </tr>
        </thead>
        <tbody>
          <tr class="border-b">
            <td class="p-3">DIWALI50</td>
            <td class="p-3">Fixed Amount</td>
            <td class="p-3">$50</td>
            <td class="p-3">2025-08-30</td>
            <td class="p-3">Used 120 times</td>
          </tr>
          <tr class="border-b">
            <td class="p-3">SPRING15</td>
            <td class="p-3">Percentage</td>
            <td class="p-3">15%</td>
            <td class="p-3">2025-08-20</td>
            <td class="p-3">Used 85 times</td>
          </tr>
        </tbody>
      </table>
    </div>
  </main>
  
</div>

</body>
</html>
