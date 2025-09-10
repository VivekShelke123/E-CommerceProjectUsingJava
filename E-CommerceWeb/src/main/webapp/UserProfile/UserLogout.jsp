<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Logout Confirmation</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-800 overflow-x-hidden">

  <%@ include file="../NavBar/NavBar.jsp" %>

  <div class="flex h-screen">
    <%@ include file="UserSidebar.jsp" %>
  </div>

  <!-- Overlay and Popup (outside flex to cover full screen) -->
  <div class="fixed inset-0 z-[999] flex items-center justify-center bg-black bg-opacity-50 backdrop-blur-sm">
    <div class="bg-white rounded-2xl shadow-2xl p-8 w-full max-w-md animate-fadeIn z-[1000]">
      <h2 class="text-2xl font-bold text-red-500 mb-4 text-center">Confirm Logout</h2>
      <p class="text-gray-700 text-center mb-6">Are you sure you want to log out?</p>
      <div class="flex justify-center gap-6">
        <form action="/E-CommerceWeb/LogoutServlet" method="get">
          <button type="submit" class="bg-red-500 text-white px-6 py-2 rounded-lg hover:bg-red-600 transition-all duration-200 shadow-md">Confirm</button>
        </form>
        <a href="UserDashboard.jsp" class="bg-gray-300 text-gray-800 px-6 py-2 rounded-lg hover:bg-gray-400 transition-all duration-200 shadow-sm">Cancel</a>
      </div>
    </div>
  </div>

  <!-- Optional: Fade-in animation -->
  <style>
    @keyframes fadeIn {
      from { opacity: 0; transform: scale(0.95); }
      to { opacity: 1; transform: scale(1); }
    }
    .animate-fadeIn {
      animation: fadeIn 0.3s ease-out forwards;
    }
  </style>

</body>
</html>