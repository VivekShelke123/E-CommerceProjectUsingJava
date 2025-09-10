<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*, com.squad.eshop.dao.UserDAO, com.squad.eshop.model.UserModel, com.squad.eshop.util.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link
      rel="shortcut icon"
      href="Logo.png"
      type="image/x-icon"
    />
    <!--! css link -->
 <!--   <link rel="stylesheet" href="./assets/style.css" /> -->
    <!--? swiperjs cdn link -->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper@8/swiper-bundle.min.css"
    />
    <!--todo tailwind cdn link -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      tailwind.config = {
        theme: {
          extend: {
            colors: {
              clifford: "#da373d",
            },
          },
        },
      };
    </script>
</head>
<body>

<%
  String role = "visit";
  if (session != null && session.getAttribute("role") != null) {
    role = (String) session.getAttribute("role");
  }
%>

	<header class="header w-full">
                <!--! Filtered Header -->
                <div class="top-header w-screen flex flex-col items-center justify-between border-b">
                <div class="gap-4 flex flex-col sm:flex-row w-full items-center justify-between p-6 md:px-24">
                    <h1 class="font-semibold text-4xl text-gray-600"><a href="/E-CommerceWeb">G-Store</a></h1>
        
                    <!--SearchBar -->
                    <form class="relative w-full sm:w-3/5">
                    <input class="w-full h-full p-2 border rounded-xl" placeholder="Enter Your Product Name..." id="search"
                        type="text" />
                    <label class="absolute right-2 top-2" for="search">
                        <i class="fa-solid fa-magnifying-glass cursor-pointer"></i>
                    </label>
                    </form>
        
                    <div class="icons hidden mr-2 text-3xl md:flex gap-8 text-gray-600">
                    
                   
					<%
                    	if(role.equals("admin")){%>
                            
                            <div class="relative group z-[300] text-sm font-medium text-gray-700">
					  <!-- Icon Trigger -->
					  
					  <div class="flex items-center cursor-pointer hover:text-red-400 transition duration-200">
					  <a href='/E-CommerceWeb/AdminPannel/Admin.jsp'><ion-icon name="person" class="text-3xl"></ion-icon></a> 
					  </div>
					
					  <!-- Dropdown Menu -->
					  <div class="hoveredItems w-48 absolute top-full mt-2 opacity-0 invisible group-hover:opacity-100 group-hover:visible flex flex-col items-start justify-start gap-2 p-3 rounded-lg shadow-xl border bg-white z-[301] transition-all duration-300 ease-in-out">
					    <a href='/E-CommerceWeb/AdminPannel/ProductPage.jsp' class='block w-full px-2 py-1 hover:text-red-400 transition'>Add Product</a>
					    <a href='/E-CommerceWeb/AdminPannel/CouponPage.jsp' class='block w-full px-2 py-1 hover:text-red-400 transition'>Add Coupont</a>
					    <a href='/E-CommerceWeb/LogoutServlet' class='block w-full px-2 py-1 hover:text-red-400 transition'>Logout</a>
					  </div>
					</div>
                    	
                    	<% }else if(role.equals("user")){
                    	%>
                    	<div class="relative group z-[300] text-sm font-medium text-gray-700">
					  <!-- Icon Trigger -->
					  
					  <div class="flex items-center cursor-pointer hover:text-red-400 transition duration-200">
					  <a href='/E-CommerceWeb/UserProfile/UserDashboard.jsp'><ion-icon name="person-outline" class="text-3xl"></ion-icon></a> 
					  </div>
					
					  <!-- Dropdown Menu -->
					  <div class="hoveredItems w-48 absolute top-full mt-2 opacity-0 invisible group-hover:opacity-100 group-hover:visible flex flex-col items-start justify-start gap-2 p-3 rounded-lg shadow-xl border bg-white z-[301] transition-all duration-300 ease-in-out">
					    <a href='/E-CommerceWeb/UserProfile/EditProfile.jsp' class='block w-full px-2 py-1 hover:text-red-400 transition'>✏️ Update Profile</a>
					    <a href='/E-CommerceWeb/UserProfile/UserLogout.jsp' class='block w-full px-2 py-1 hover:text-red-400 transition'>🚪 Logout</a>
					  </div>
					</div>
                    	<% }
                    	else{%>
          
                    	<div class="relative group z-[300] text-sm font-medium text-gray-700">
					  <!-- Icon Trigger -->
					  
					  <div class="flex items-center cursor-pointer hover:text-red-400 transition duration-200">
					  <a href='/E-CommerceWeb/Login/Login.html'><img alt="Login" class="w-8" src="${pageContext.request.contextPath}/NavBar/login.png"></a> 
					  </div>
					  </div>
                    	<%} %>
                    
					

                    
                    <div class="relative">
                        <span
                        class="text-xs text-center font-semibold text-white absolute -top-2 -right-2 w-4 h-4 bg-red-400 rounded-full">0</span>
                        <ion-icon name="heart-outline"></ion-icon>
                    </div>
                    <div class="relative">
                        <span
                        class="text-xs text-center font-semibold text-white absolute -top-2 -right-2 w-4 h-4 bg-red-400 rounded-full">0</span>
                        <ion-icon name="bag-handle-outline"></ion-icon>
                    </div>
                    
                    </div>
                </div>
                </div>
            </header>

            <!-- lower navbar -->

            <div class="desktopNavbar sticky top-0 z-50 bg-white shadow">
                <nav class="my-4 hidden lg:flex justify-center">
                <ul class="desktopNavbarUl flex justify-center p-2 items-center gap-12 font-sm font-bold text-gray-600">
                    <li class="nav_items relative group z-50">
                    <a href="/E-CommerceWeb/">HOME</a>
                    <span
                        class="absolute bottom-0 left-0 h-0.5 bg-red-400 transition-all duration-300 ease-in-out w-0 group-hover:w-full"
                    ></span>
                    </li>
                    <li class="nav_items relative group z-50">
                    <a href="#Categories">CATEGORIES</a>
                    <span
                        class="absolute bottom-0 left-0 h-0.5 bg-red-400 transition-all duration-300 ease-in-out w-0 group-hover:w-full"
                    ></span>
                    </li>
        
                    <li class="nav_items relative group z-50">
                    <a href="#Men">MEN'S</a>
                    <span
                        class="absolute bottom-0 left-0 h-0.5 bg-red-400 transition-all duration-300 ease-in-out w-0 group-hover:w-full"
                    ></span>
                    </li>
        
                    <li class="nav_items relative group z-50">
                    <a href="#Women">WOMEN'S</a>
                    <span
                        class="absolute bottom-0 left-0 h-0.5 bg-red-400 transition-all duration-300 ease-in-out w-0 group-hover:w-full"
                    ></span>
                    </li>
                    <li class="nav_items relative group z-50">
                    <a href="#Jewelry">JEWELRY</a>
                    <span
                        class="absolute bottom-0 left-0 h-0.5 bg-red-400 transition-all duration-300 ease-in-out w-0 group-hover:w-full"
                    ></span>
                    <!--? hoverItems -->
                    </li>
                    <li class="nav_items relative group z-50">
                    <a href="#Perfume">PERFUME</a>
                    <span
                        class="absolute bottom-0 left-0 h-0.5 bg-red-400 transition-all duration-300 ease-in-out w-0 group-hover:w-full"
                    ></span>
                    <!--? hoverItems -->
                    </li>
                    <li class="nav_items relative">
                    <a href="#HotOffers">HOT OFFERS</a>
                    <span
                        class="absolute bottom-0 left-0 h-0.5 bg-red-400 transition-all duration-300 ease-in-out w-0 group-hover:w-full"
                    ></span>
                    </li>
                </ul>
                </nav>
            </div>
	
	<script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    <!--!javascript file  -->
    <!-- <script type="module" src="./assets/index.js"></script> -->
	
</body>
</html>