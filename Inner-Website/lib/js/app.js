// event click Input

const search = document.querySelector('.fa-search');
const playMovieBanner = document.querySelector('.banner-btn-play')
const infoMovieBanner = document.querySelector('.banner-btn-info')

window.addEventListener('load', () => {
    setTimeout(() => {
        document.querySelector('header').classList.add('z-index');
        document.querySelector('.banner-content-text').classList.add('hide')
        document.querySelector('.banner-content-img img').classList.add('zoom-out')
        document.querySelector('.trailer-film').querySelector('iframe').classList.add('show')
    }, 4000);
})
search.addEventListener('click', () => {
    search.classList.toggle('show')
    if (search.classList.contains('show')) {
        document.querySelector('.search-input').classList.add('show');
    } else {
        document.querySelector('.search-input').classList.remove('show');
    }
})

// play movie
playMovieBanner.addEventListener('click', () => {
    // loading fade-out (empty background)
    window.addEventListener('load', () => {
        document.querySelector('.play-film').classList.add('open');
        document.querySelector('body').classList.add('ignore-overflow-x');
        document.querySelector('.preloader').classList.add('fade-out');
        setTimeout(() => {
            document.querySelector('.preloader').style.display = 'none';
        }, 600)
    })
})

// back to browse
document.querySelector('.close-movie').addEventListener('click', () => {
    document.querySelector('.play-film').classList.remove('open');
    document.querySelector('body').classList.remove('ignore-overflow-x');
})


// Display trailer of banner

// ---------------------Slider
const sliderPopular = document.querySelector('.popular-slider-card'), // take all card-item to an array
    slides = document.querySelectorAll('.popular-slider-card-item'),
    // set width for item parent
    slide = document.querySelector('.popular-slider-card-item'),
    slideWidth = sliderPopular.offsetWidth,
    // button prev
    prevBtn = document.querySelector('.popular-slider-nav .prev'), // button next
    nextBtn = document.querySelector('.popular-slider-nav .next');

//  Count number of slide for every click.
let countSlide = Math.ceil((slides.length * slide.offsetWidth) / (5 * slide.offsetWidth));
console.log(countSlide)
    // set index = 0;
let slideIndex = 0;
// click for next button
sliderPopular.style.width = slideWidth * countSlide + 'px';
console.log(sliderPopular.style.width)
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