const products = [
      { name: "Smartphone", category: "electronics", image: "https://via.placeholder.com/150", price: "₹15,999" },
      { name: "Laptop", category: "electronics", image: "https://via.placeholder.com/150", price: "₹49,999" },
      { name: "Sneakers", category: "footwear", image: "https://via.placeholder.com/150", price: "₹2,499" },
      { name: "Sandals", category: "footwear", image: "https://via.placeholder.com/150", price: "₹999" },
      { name: "T-Shirt", category: "fashion", image: "https://via.placeholder.com/150", price: "₹599" },
      { name: "Jacket", category: "fashion", image: "https://via.placeholder.com/150", price: "₹1,999" }
    ];

    function filter(category) {
      const grid = document.getElementById("productGrid");
      grid.innerHTML = "";

      const filtered = category === "all" ? products : products.filter(p => p.category === category);

      filtered.forEach(product => {
        const card = document.createElement("div");
        card.className = "bg-white border rounded-lg shadow hover:shadow-md transition p-4 text-center";

        card.innerHTML = `
          <img src="${product.image}" alt="${product.name}" class="mx-auto mb-4 h-32 object-cover rounded">
          <h3 class="text-lg font-semibold mb-2">${product.name}</h3>
          <p class="text-gray-600 mb-2">${product.price}</p>
          <button class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-500">Add to Cart</button>
        `;

        grid.appendChild(card);
      });
    }

    // Load all products by default
    filter('all');