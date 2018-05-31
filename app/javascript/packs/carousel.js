import Flickity from 'flickity';

let elem = document.querySelector('.carousel');
let flkty = new Flickity( elem, {
  // options
  imagesLoaded: true,
  cellAlign: 'center',
  contain: true,
  pageDots: false,
  resize: false,
  setGallerySize: false
});

var imgs = document.querySelectorAll(".card__image img");
var docStyle = document.documentElement.style;
var transformProp = typeof docStyle.transform == 'string' ? 'transform' : 'WebkitTransform';
var info = document.querySelector(".info");

flkty.on( 'scroll', function () {
  flkty.slides.forEach( function (slide, i) {
    var img = imgs[i];
    var x = ( slide.target + flkty.x ) * -1/3;

    img.style[transformProp] = 'translateX(' + x + 'px) scale(1.3)';
  } );
} );
