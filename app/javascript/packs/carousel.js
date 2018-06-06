import Flickity from 'flickity';

let elem1 = document.getElementById('carousel-1');
let flkty1 = new Flickity( elem1, {
  // options
  imagesLoaded: true,
  cellAlign: 'center',
  contain: true,
  pageDots: false,
  freeScroll: true,
  wrapAround: true,
  resize: false,
  setGallerySize: false
});

var imgs1 = document.querySelectorAll("#carousel-1 .carousel-item .card .card__image img");
var docStyle1 = document.documentElement.style;
var transformProp1 = typeof docStyle1.transform == 'string' ? 'transform' : 'WebkitTransform';
var info1 = document.querySelector(".info");

flkty1.on( 'scroll', function () {
  flkty1.slides.forEach( function (slide, i) {
    var img1 = imgs1[i];
    var x1 = ( slide.target + flkty1.x ) * -1/3;

    img1.style[transformProp1] = 'translateX(' + x1 + 'px) scale(1.3)';
  } );
} );

let elem2 = document.getElementById('carousel-2');
let flkty2 = new Flickity( elem2, {
  // options
  imagesLoaded: true,
  cellAlign: 'center',
  contain: true,
  pageDots: false,
  freeScroll: true,
  wrapAround: true,
  resize: false,
  setGallerySize: false
});

var imgs2 = document.querySelectorAll("#carousel-2 .carousel-item .card .card__image img");
var docStyle2 = document.documentElement.style;
var transformProp2 = typeof docStyle2.transform == 'string' ? 'transform' : 'WebkitTransform';
var info2 = document.querySelector(".info");

flkty2.on( 'scroll', function () {
  flkty2.slides.forEach( function (slide, i) {
    var img2 = imgs2[i];
    var x2 = ( slide.target + flkty2.x ) * -1/3;

    img2.style[transformProp2] = 'translateX(' + x2 + 'px) scale(1.3)';
  } );
} );

