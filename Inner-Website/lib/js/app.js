"use strict"

// event click Input

const search = document.querySelector('.fa-search');
const playMovieBanner = document.querySelector('.banner-btn-play')
const infoMovieBanner = document.querySelector('.banner-btn-info')
const body = document.querySelector('body');

// scroll vertically

window.addEventListener('scroll', function() {
    const header = document.querySelector("header");
    header.classList.toggle('scrollTop', window.scrollY > 0);
})
loadTrailer()

function loadTrailer() {
    setTimeout(() => {
        document.querySelector('header').classList.add('z-index');
        document.querySelector('.banner-content-text').classList.add('hide')
        document.querySelector('.banner-content-img img').classList.add('zoom-out')
        document.querySelector('.banner .banner-img img').classList.add('hide')
        document.querySelector('.trailer-film').querySelector('iframe').classList.add('show')
    }, 4000);
}

// loading trailer in Preview (Info)
function loadTrailerInfo() {
    setTimeout(() => {
        document.querySelector('.preview-detail-banner').querySelector('img').classList.add('hide');
        document.querySelector('.preview-detail-banner').querySelector('iframe').classList.add('show')

    }, 4000);
}

// stopping trailer in Preview (Info)
function stopTrailerInfo() {
    document.querySelector('.preview-detail-banner').querySelector('img').classList.remove('hide');
    document.querySelector('.preview-detail-banner').querySelector('iframe').classList.remove('show')
}
// stop iframe youtube trailer banner
function OffTrailer() {
    document.querySelector('header').classList.remove('z-index');
    document.querySelector('.banner-content-text').classList.remove('hide');
    document.querySelector('.banner-content-img img').classList.remove('zoom-out');
    document.querySelector('.trailer-film').querySelector('iframe').classList.remove('show');
    document.querySelector('.banner .banner-img img').classList.remove('hide');
}

// ------------------- animation search start
search.addEventListener('click', () => {
    search.classList.toggle('show')
    if (search.classList.contains('show')) {
        document.querySelector('.search-input').classList.add('show');
    } else {
        document.querySelector('.search-input').classList.remove('show');
    }
})

// ------------------- animation search end

//------------------- play movie start
const playFilm = document.querySelector('.play-film');
playMovieBanner.addEventListener('click', () => {
    OffTrailer();
    // loading fade-out (empty background)
    playFilm.classList.toggle('open');
    document.querySelector('.preloader').classList.add('fade-out');
    if (playFilm.querySelector('iframe').classList.contains('hide')) {
        playFilm.querySelector('iframe').classList.remove('hide')
    }
    body.classList.add('ignore-overflow-y');

    setTimeout(() => {
        document.querySelector('.preloader').style.display = 'none';
    }, 600)
})

//back to browse
document.querySelector('.close-movie').addEventListener('click', () => {
    playFilm.classList.remove('open');
    const iframe = playFilm.querySelector('iframe')

    // stop iframe Youtube video when it don't auto
    if (iframe !== null) {
        var iframeSrc = iframe.src;
        iframe.src = iframeSrc;
    }
    // remove Scroll-X
    body.classList.remove('ignore-overflow-y');
    loadTrailer();
})

//------------------- play movie end-------

// ---------------------Slider start----------------------

// --------------show more info start
const btnMoreInfo = document.querySelector(".banner-btn-info"),
    preview = document.querySelector(".preview"),
    trailerInfo = document.querySelector('.preview-detail-trailer'),
    linkIframe = trailerInfo.querySelector('.preview-detail-banner iframe'),
    slideCard = document.querySelector('.popular-slider-card'),
    slideCardItems = document.querySelectorAll('.popular-slider-card-item'),
    itemInfo = document.querySelector('.item-info')

// take all categories into an array and then set up slide 
const slides = document.querySelectorAll('.popular-slider')
    // use forEach to set every slide
slides.forEach((slide, index) => {
    // take width for each slide
    const sliderPopular = slide.querySelector('.popular-slider-card'),
        slideWidth = sliderPopular.offsetWidth,

        // take all card-item to an array
        slideItems = slide.querySelectorAll('.popular-slider-card-item'),

        // use to count item in a slide and take it's width
        slideItem = slide.querySelector('.popular-slider-card-item'),
        // button prev
        prevBtn = slide.querySelector('.popular-slider-nav .prev-btn'), // button next
        nextBtn = slide.querySelector('.popular-slider-nav .next-btn'),

        trailerInfo = document.querySelector('.preview-detail-trailer'),
        linkIframe = trailerInfo.querySelector('.preview-detail-banner iframe');

    //  Count number of slide for every click.
    let countSlide = Math.ceil((slideItems.length * slideItem.offsetWidth) / (5 * slideItem.offsetWidth)),
        // set index = 0;
        slideIndex = 0;
    // click for next button
    sliderPopular.style.width = slideWidth * countSlide + 'px';

    // if slide has only 5 items. Don't have next button
    if (countSlide <= 1) {
        nextBtn.classList.add("hide");
    }
    // Number of clicking is countSlide
    nextBtn.addEventListener('click', () => {
            // if slideIndex == countSlide then reset slideIndex = 0
            if (slideIndex === countSlide - 1) {
                slideIndex = 0;
            } else {
                slideIndex++;
            }
            // if slideIndex = 0 then prev button will hide
            if (slideIndex > 0) {
                prevBtn.classList.add('active')
            } else {
                prevBtn.classList.remove('active')
            }
            slider();
        })
        // click for pre button
    prevBtn.addEventListener('click', () => {
            if (slideIndex === 0) {
                slideIndex = countSlide - 1;
            } else {
                slideIndex--;
            }
            slider();
        })
        // when it has event "click" Margin left is minus to next slideIndex
    function slider() {
        sliderPopular.style.marginLeft = -(slideWidth * slideIndex) + 'px';
    }

    //  show Info and Play video 

    let itemIndex;
    sliderPopular.addEventListener('mouseover', (e) => {
        // if addEvent exist "item hover"
        if (e.target.closest('.popular-slider-card-item--hover')) {

            // declare a parameter assign item Hover's nodeParent from E.target (The item is clicked)
            const slideCardItem = e.target.closest('.popular-slider-card-item--hover').parentElement;
            // take all Item to array.
            itemIndex = Array.from(slideCardItem.parentElement.children).indexOf(slideCardItem);
            //  if CardItem[itemIndex] contains item-info class (More info)
            const detail = slideItems[itemIndex].querySelector('.popular-slider-details').innerHTML;
            if (slideItems[itemIndex].querySelector('.item-info')) {
                slideItems[itemIndex].querySelector('.item-info').addEventListener('click', (e) => {
                    // show preview
                    // hide trailer
                    OffTrailer();
                    loadTrailerInfo();
                    // open preview
                    preview.classList.add('open');
                    preview.querySelector('.preview-detail').innerHTML = detail;
                    document.body.classList.add('ignore-overflow-y');
                })
            }
            //  if CardItem[itemIndex] contains fa-play class (Play Movie)
            if (slideItems[itemIndex].querySelector('.fa-play')) {
                slideItems[itemIndex].querySelector('.fa-play').addEventListener('click', (e) => {

                })
            }
        }
    })
})

//----- close Preview
preview.addEventListener('click', (e) => {
    if (e.target.classList.contains('preview')) {
        preview.classList.remove('open');
        body.classList.remove('ignore-overflow-y');
        // stop trailer banner
        loadTrailer();
        // stop trailer info
        stopTrailerInfo();
    }
})

//----------------slide end--------------------