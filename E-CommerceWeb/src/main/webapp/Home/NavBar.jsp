
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
    <link rel="stylesheet" href="./assets/style.css" />
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

	<header class="header w-full">
      <!--! Filtered Header -->
      <div
        class="top-header w-screen flex flex-col items-center justify-between border-b"
      >
        <div
          class="gap-4 flex flex-col sm:flex-row w-full items-center justify-between p-6 md:px-24"
        >
          <h1 class="font-semibold text-4xl text-gray-600">Godrej-Kart</h1>

          <!--SearchBar -->
          <form class="relative w-full sm:w-3/5">
            <input
              class="w-full h-full p-2 border rounded-xl"
              placeholder="Enter Your Product Name..."
              id="search"
              type="text"
            />
            <label class="absolute right-2 top-2" for="search">
              <i class="fa-solid fa-magnifying-glass cursor-pointer"></i>
            </label>
          </form>

          <div class="icons hidden mr-2 text-3xl md:flex gap-8 text-gray-600">
            <div class="relative">
              <ion-icon name="person-outline">
              	
              </ion-icon>
            </div>
            <div class="relative">
              <span
                class="text-xs text-center font-semibold text-white absolute -top-2 -right-2 w-4 h-4 bg-red-400 rounded-full"
                >0</span
              >
              <ion-icon name="heart-outline"></ion-icon>
            </div>
            <div class="relative">
              <span
                class="text-xs text-center font-semibold text-white absolute -top-2 -right-2 w-4 h-4 bg-red-400 rounded-full"
                >0</span
              >
              <ion-icon name="bag-handle-outline"></ion-icon>
            </div>
          </div>
        </div>
      </div>
    </header>
    <div class="desktopNavbar">
      <nav class="my-4 hidden lg:flex justify-center">
        <ul
          class="desktopNavbarUl flex justify-center items-center gap-12 font-sm font-bold text-gray-600"
        >
          <li class="nav_items relative">
            <a href="#Home">HOME</a>
          </li>
          <li class="nav_items relative category_nav_item">
            <a href="#Categories">CATEGORIES</a>
          </li>

          <li class="nav_items relative men_nav_item">
            <a href="#Men">MEN'S</a>
          </li>

          <li class="nav_items relative women_nav_item">
            <a href="#Women">WOMEN'S</a>
          </li>
          <li class="nav_items relative jewelry_nav_item">
            <a href="#Jewelry">JEWELRY</a>
            <!--? hoverItems -->
          </li>
          <li class="nav_items relative perfume_nav_item">
            <a href="#Perfume">PERFUME</a>
            <!--? hoverItems -->
          </li>
          <li class="nav_items relative">
            <a href="#Blog">BLOG</a>
          </li>
          <li class="nav_items relative">
            <a href="#HotOffers">HOT OFFERS</a>
          </li>
        </ul>
      </nav>
    </div>

	
</body>
</html>