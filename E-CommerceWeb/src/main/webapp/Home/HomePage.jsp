<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Home/HomeStyle.css" />
</head>

<body>
	<div class="overflow-x-hidden">
	<%@ include file="../NavBar/NavBar.jsp" %>
	
	
	
	<!-- Carousel Slider -->
	
	<div class="carousel">
		<div class="slides" id="slides">
			<div class="slide">
				<h2>Grab Upto 50% Off On Selected Headphones</h2>
				<button>Buy Now</button>
			</div>
			<div class="slide">
				<h2>New Arrivals: Wireless Earbuds</h2>
				<button>Explore</button>
			</div>
			<div class="slide">
				<h2>Top Rated: Bose & AirPods</h2>
				<button>Shop Now</button>
			</div>
		</div>
		<div class="carousel-controls">
			<button onclick="prevSlide()">❮</button>
			<button onclick="nextSlide()">❯</button>
		</div>
	</div>
	
	<!-- This Is Category Area -->
	<!-- Category Section -->
<h2 class="text-3xl font-bold text-center my-10 text-gray-800">Shop by Category</h2>
<div id="category-carousel" style="overflow-x: auto; scrollbar-width: none; -ms-overflow-style: none;" class="flex overflow-x-auto   whitespace-nowrap gap-6 px-6 scroll-smooth">
  <div class="min-w-[250px] p-4 bg-white border border-gray-300 rounded-xl shadow hover:shadow-lg transition">
    <img src="#" alt="Electronics" class="w-full h-32 object-cover rounded-md mb-2">
    <p class="text-center font-semibold text-gray-700">Electronics</p>
  </div>
  <div class="min-w-[250px] p-4 bg-white border border-gray-300 rounded-xl shadow hover:shadow-lg transition">
    <img src="#" alt="Clothing" class="w-full h-32 object-cover rounded-md mb-2">
    <p class="text-center font-semibold text-gray-700">Clothing</p>
  </div>
  <div class="min-w-[250px] p-4 bg-white border border-gray-300 rounded-xl shadow hover:shadow-lg transition">
    <img src="#" alt="Shoes" class="w-full h-32 object-cover rounded-md mb-2">
    <p class="text-center font-semibold text-gray-700">Shoes</p>
  </div>
  <div class="min-w-[250px] p-4 bg-white border border-gray-300 rounded-xl shadow hover:shadow-lg transition">
    <img src="#" alt="Perfume" class="w-full h-32 object-cover rounded-md mb-2">
    <p class="text-center font-semibold text-gray-700">Perfume</p>
  </div>
  <div class="min-w-[250px] p-4 bg-white border border-gray-300 rounded-xl shadow hover:shadow-lg transition">
    <img src="#" alt="Watches" class="w-full h-32 object-cover rounded-md mb-2">
    <p class="text-center font-semibold text-gray-700">Watches</p>
  </div>
  <div class="min-w-[250px] p-4 bg-white border border-gray-300 rounded-xl shadow hover:shadow-lg transition">
    <img src="#" alt="Watches" class="w-full h-32 object-cover rounded-md mb-2">
    <p class="text-center font-semibold text-gray-700">Watches</p>
  </div>
  <div class="min-w-[250px] p-4 bg-white border border-gray-300 rounded-xl shadow hover:shadow-lg transition">
    <img src="#" alt="Watches" class="w-full h-32 object-cover rounded-md mb-2">
    <p class="text-center font-semibold text-gray-700">Watches</p>
  </div>
  <div class="min-w-[250px] p-4 bg-white border border-gray-300 rounded-xl shadow hover:shadow-lg transition">
    <img src="#" alt="Watches" class="w-full h-32 object-cover rounded-md mb-2">
    <p class="text-center font-semibold text-gray-700">Watches</p>
  </div>
</div>

<!-- Trending Products -->
<h2 class="text-3xl font-bold text-center my-12 text-gray-800">Trending Now</h2>
<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8 px-6">
  <div class="bg-white p-4 border border-gray-300 rounded-xl shadow hover:shadow-xl transition">
    <img src="#" alt="Trending Product" class="w-full h-40 object-cover rounded-md mb-3">
    <h3 class="font-semibold text-lg text-gray-800">Wireless Headphones</h3>
    <p class="text-sm text-gray-500">Top-rated audio gear</p>
    <button class="mt-3 px-4 py-2 bg-red-500 text-white rounded hover:bg-red-600">Buy Now</button>
  </div>
  <div class="bg-white p-4 border border-gray-300 rounded-xl shadow hover:shadow-xl transition">
    <img src="#" alt="Trending Product" class="w-full h-40 object-cover rounded-md mb-3">
    <h3 class="font-semibold text-lg text-gray-800">Smart Watches</h3>
    <p class="text-sm text-gray-500">Track your fitness in style</p>
    <button class="mt-3 px-4 py-2 bg-red-500 text-white rounded hover:bg-red-600">Shop Now</button>
  </div>
  <div class="bg-white p-4 border border-gray-300 rounded-xl shadow hover:shadow-xl transition">
    <img src="#" alt="Trending Product" class="w-full h-40 object-cover rounded-md mb-3">
    <h3 class="font-semibold text-lg text-gray-800">Bluetooth Speakers</h3>
    <p class="text-sm text-gray-500">Party-ready sound</p>
    <button class="mt-3 px-4 py-2 bg-red-500 text-white rounded hover:bg-red-600">Explore</button>
  </div>
  <div class="bg-white p-4 border border-gray-300 rounded-xl shadow hover:shadow-xl transition">
    <img src="#" alt="Trending Product" class="w-full h-40 object-cover rounded-md mb-3">
    <h3 class="font-semibold text-lg text-gray-800">Gaming Accessories</h3>
    <p class="text-sm text-gray-500">Level up your setup</p>
    <button class="mt-3 px-4 py-2 bg-red-500 text-white rounded hover:bg-red-600">Discover</button>
  </div>
</div>

<!-- Discounts Section -->
<h2 class="text-3xl font-bold text-center my-12 text-gray-800">Hot Deals & Discounts</h2>
<div class="flex flex-wrap justify-center gap-6 px-6">
  <div class="bg-gradient-to-r from-yellow-400 to-red-500 text-white p-6 rounded-xl shadow-lg max-w-[300px] text-center">
    <h3 class="text-xl font-bold mb-2">Up to 60% Off</h3>
    <p>On select fashion items</p>
    <button class="mt-3 px-4 py-2 bg-white text-red-600 font-semibold rounded hover:bg-gray-100">Explore</button>
  </div>
  <div class="bg-gradient-to-r from-blue-400 to-purple-500 text-white p-6 rounded-xl shadow-lg max-w-[300px] text-center">
    <h3 class="text-xl font-bold mb-2">Buy 1 Get 1 Free</h3>
    <p>On perfumes & accessories</p>
    <button class="mt-3 px-4 py-2 bg-white text-purple-600 font-semibold rounded hover:bg-gray-100">Shop Now</button>
  </div>
</div>

<!-- Exclusive Discounts Carousel -->
<h2 class="text-3xl font-bold text-center my-10 text-gray-800">Exclusive Discounts</h2>
<div class="relative w-full overflow-hidden px-6">
  <div id="discount-carousel" class="flex gap-6 w-max transition-transform duration-700 ease-in-out">
    <!-- Card 1 -->
    <div class="min-w-[650px] max-w-[6500px] bg-white border border-gray-200 p-4 rounded-xl shadow hover:shadow-md transition">
      <h3 class="text-lg font-bold text-gray-800 mb-2">🎧 30% Off on Headphones</h3>
      <p class="text-sm text-gray-600">Grab the latest audio gear at unbeatable prices.</p>
    </div>
    <!-- Card 2 -->
    <div class="min-w-[650px] max-w-[650px] bg-white border border-gray-200 p-4 rounded-xl shadow hover:shadow-md transition">
      <h3 class="text-lg font-bold text-gray-800 mb-2">👟 Flat ₹500 Off on Sneakers</h3>
      <p class="text-sm text-gray-600">Step into style with top brands.</p>
    </div>
    <!-- Card 3 -->
    <div class="min-w-[650px] max-w-[650px] bg-white border border-gray-200 p-4 rounded-xl shadow hover:shadow-md transition">
      <h3 class="text-lg font-bold text-gray-800 mb-2">⌚ Buy 1 Get 1 on Watches</h3>
      <p class="text-sm text-gray-600">Limited time offer on premium timepieces.</p>
    </div>
  </div>
</div>


<!-- Explore Brands Section -->
<h2 class="text-3xl font-bold text-center my-12 text-gray-800">Explore Brands</h2>
<div class="flex flex-wrap justify-center gap-10 px-6 py-6 bg-gray-50 rounded-xl shadow-inner">
  <div class="flex flex-col items-center">
    <img src="#" alt="Apple" class="h-12 mb-2">
    <p class="text-sm font-semibold text-gray-700">Apple</p>
  </div>
  <div class="flex flex-col items-center">
    <img src="#" alt="Bose" class="h-12 mb-2">
    <p class="text-sm font-semibold text-gray-700">Bose</p>
  </div>
  <div class="flex flex-col items-center">
    <img src="#" alt="Nike" class="h-12 mb-2">
    <p class="text-sm font-semibold text-gray-700">Nike</p>
  </div>
  <div class="flex flex-col items-center">
    <img src="#" alt="Samsung" class="h-12 mb-2">
    <p class="text-sm font-semibold text-gray-700">Samsung</p>
  </div>
</div>


<!-- Footer -->
<footer class="bg-gray-900 text-white mt-16 py-10">
  <div class="max-w-6xl mx-auto px-6 grid grid-cols-1 sm:grid-cols-3 gap-8">
    <div>
      <h4 class="font-bold text-lg mb-3">E-CommerceWeb</h4>
      <p class="text-sm text-gray-400">Your one-stop shop for everything from electronics to fashion.</p>
    </div>
    <div>
      <h4 class="font-bold text-lg mb-3">Quick Links</h4>
      <ul class="text-sm space-y-2">
        <li><a href="#" class="hover:underline">Home</a></li>
        <li><a href="#" class="hover:underline">Shop</a></li>
        <li><a href="#" class="hover:underline">Contact</a></li>
        <li><a href="#" class="hover:underline">About Us</a></li>
      </ul>
    </div>
    <div>
      <h4 class="font-bold text-lg mb-3">Follow Us</h4>
      <div class="flex gap-4">
        <ion-icon name="logo-facebook" class="text-2xl hover:text-blue-500"></ion-icon>
        <ion-icon name="logo-instagram" class="text-2xl hover:text-pink-500"></ion-icon>
        <ion-icon name="logo-twitter" class="text-2xl hover:text-blue-400"></ion-icon>
      </div>
    </div>
  </div>
  <div class="text-center text-sm text-gray-500 mt-6">
    &copy; 2025 E-CommerceWeb. All rights reserved.
  </div>
</footer>
	
	
	<script src="${pageContext.request.contextPath}/Home/HomeScript.js"></script>
	
	<script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
</body>
</html>