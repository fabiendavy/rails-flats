const giveActiveClassToCarouselElement = () => {
  const carouselItems = document.querySelectorAll('.carousel-item');
  carouselItems[0].classList.add('active');
};

export { giveActiveClassToCarouselElement }
