var caixa_menu = document.getElementsByTagName("aside")[0]



function menu() {
 
    caixa_menu.style.top = "0"
    // caixa_menu.style.width = "100%"
    caixa_menu.style.display = "inline-block"

}

function voltar_menu() {

   
    caixa_menu.style.top = "-410px";
    // caixa_menu.style.width = "300px";;
    
}
var TrandingSlider = new Swiper('.tranding-slider', {
    effect: 'coverflow',
    grabCursor: true,
    centeredSlides: true,
    loop: true,
    slidesPerView: 'auto',
    coverflowEffect: {
      rotate: 0,
      stretch: 0,
      depth: 100,
      modifier: 2.5,
    },
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    }
  });

  var ul = document.querySelector('nav ul');
  var menuBtn = document.querySelector('.menu-btn i');
