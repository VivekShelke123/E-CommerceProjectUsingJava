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
	
	<div >
	<div class="flex flex-wrap w-full justify-center ">
      <div class="basis-1/5 max-w-[250px] p-6 bg-white border border-gray-300 rounded-2xl shadow-[6px_6px_0px_#e5e7eb] hover:shadow-[8px_8px_0px_#d1d5db] transition-all duration-300  ">
        <img src="" alt="This is image" class="w-full lg:h-36 object-cover rounded-lg mb-4">
        <li>This Will Be Title</li>
        <li>this will be category</li>
      </div>
      <div class="basis-1/5 max-w-[250px] p-6  bg-white border border-gray-300 rounded-2xl shadow-[6px_6px_0px_#e5e7eb] hover:shadow-[8px_8px_0px_#d1d5db] transition-all duration-300 ">
        <img src="" alt="This is image" class="w-full  lg:h-36 object-cover rounded-lg mb-4">
        <li>This Will Be Title</li>
        <li>this will be category</li>
      </div>
    </div>
	</div>
	
	</div>
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