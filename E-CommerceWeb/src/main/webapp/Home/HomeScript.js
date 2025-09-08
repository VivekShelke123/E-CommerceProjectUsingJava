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