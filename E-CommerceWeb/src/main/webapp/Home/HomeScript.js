let currentSlide = 0;
function showSlide(index) {
  const slides = document.getElementById("slides");
  const total = slides.children.length;
  currentSlide = (index + total) % total;
  slides.style.transform = `translateX(-${currentSlide * 100}%)`;
}
function nextSlide() { showSlide(currentSlide + 1); }
function prevSlide() { showSlide(currentSlide - 1); }
setInterval(nextSlide, 5000);



//-------------Discount Coupon Carousel

const carousel = document.getElementById('discount-carousel');
const cardWidth = 675; // card width + gap

function slide() {
  // Animate the slide
  carousel.style.transition = 'transform 0.5s ease-in-out';
  carousel.style.transform = `translateX(-${cardWidth}px)`;

  setTimeout(() => {
    const firstCard = carousel.children[0];
    carousel.appendChild(firstCard);

    carousel.style.transition = 'none';
    carousel.style.transform = 'translateX(0)';
  }, 1000);
}

setInterval(slide, 2000);

document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById("category-carousel");
  const scrollAmount = 300; // Scroll by one full row

  // Create left and right arrow buttons
  const leftArrow = document.createElement('button');
  const rightArrow = document.createElement('button');

  leftArrow.innerText = '←';
  rightArrow.innerText = '→';

  leftArrow.className = 'absolute left-2 top-1/2 transform -translate-y-1/2 bg-gray-700 text-white px-4 py-2 rounded-full shadow hover:bg-gray-900 z-10';
  rightArrow.className = 'absolute right-2 top-1/2 transform -translate-y-1/2 bg-gray-700 text-white px-4 py-2 rounded-full shadow hover:bg-gray-900 z-10';

  // Wrap the category cards in a scrollable container
  const wrapper = document.createElement('div');
  wrapper.className = 'relative overflow-hidden w-full scrollbar-hide';
  container.parentNode.insertBefore(wrapper, container);
  wrapper.appendChild(container);
  wrapper.appendChild(leftArrow);
  wrapper.appendChild(rightArrow);

  // Add scroll behavior
  leftArrow.addEventListener('click', () => {
    container.scrollBy({ left: -scrollAmount});
  });

  rightArrow.addEventListener('click', () => {
    container.scrollBy({ left: scrollAmount });
  });
});


