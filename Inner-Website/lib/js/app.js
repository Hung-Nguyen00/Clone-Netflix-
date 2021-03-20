"use strict"

// event click Input

const search = document.querySelector('.fa-search');
const stopMovieBanner = document.querySelector('.banner-btn-play')
const infoMovieBanner = document.querySelector('.banner-btn-info')

loadTrailer();

function loadTrailer() {
    setTimeout(() => {
        document.querySelector('header').classList.add('z-index');
        document.querySelector('.banner-content-text').classList.add('hide')
        document.querySelector('.banner-content-img img').classList.add('zoom-out')
        document.querySelector('.trailer-film').querySelector('iframe').classList.add('show')
    }, 4000);
}

function OffTrailer() {
    setTimeout(() => {
        document.querySelector('header').classList.remove('z-index');
        document.querySelector('.banner-content-text').classList.remove('hide')
        document.querySelector('.banner-content-img img').classList.remove('zoom-out')
        document.querySelector('.trailer-film').querySelector('iframe').classList.remove('show')
    }, 1000);
}
// ------------------- animation search
search.addEventListener('click', () => {
    search.classList.toggle('show')
    if (search.classList.contains('show')) {
        document.querySelector('.search-input').classList.add('show');
    } else {
        document.querySelector('.search-input').classList.remove('show');
    }
})

//------------------- play movie start
stopMovieBanner.addEventListener('click', () => {
    // loading fade-out (empty background)
    stopPlayingTrailer();
    document.querySelector('.play-film').classList.toggle('open');
    document.querySelector('body').classList.add('ignore-overflow-x');
    document.querySelector('.preloader').classList.add('fade-out');
    setTimeout(() => {
        document.querySelector('.preloader').style.display = 'none';
    }, 600)
})

//------------------ back to browse
document.querySelector('.close-movie').addEventListener('click', () => {
        document.querySelector('.play-film').classList.remove('open');
        document.querySelector('body').classList.remove('ignore-overflow-x');
        load();
    })
    //------------------- play movie end-------


// --------------show more info start
const btnMoreInfo = document.querySelector(".banner-btn-info");
const preview = document.querySelector(".preview");

btnMoreInfo.addEventListener('click', () => {
    //  stop trailer
    OffTrailer();
    preview.classList.add('open');
    document.body.classList.add('ignore-overflow-x');
    const trailerInfo = document.querySelector('.preview-detail-trailer')
    const linkIframe = trailerInfo.querySelector('iframe');
    if (linkIframe.src.search('?autoplay=1') === -1) {
        linkIframe.src = linkIframe.src.replace('?', '?autoplay=1')
    }
})

//----- close Preview
preview.addEventListener('click', (e) => {
        if (e.target.classList.contains('preview')) {
            preview.classList.remove('open');
            document.querySelector('body').classList.remove('ignore-overflow-x');
            // stop trailer banner
            load();
            // stop trailer info
            stopTrailerInfo();
        }
    })
    // -------------------show info end

// Display trailer of banner

// ---------------------Slider start----------------------
const slides = document.querySelectorAll('.popular-slider')

slides.forEach((slide) => {
        const sliderPopular = slide.querySelector('.popular-slider-card'), // take all card-item to an array
            slidesItems = slide.querySelectorAll('.popular-slider-card-item'),
            // set width for item parent
            slideItem = slide.querySelector('.popular-slider-card-item'),
            slideWidth = sliderPopular.offsetWidth,
            // button prev
            prevBtn = slide.querySelector('.popular-slider-nav .prev'), // button next
            nextBtn = slide.querySelector('.popular-slider-nav .next');


        //  Count number of slide for every click.
        let countSlide = Math.ceil((slidesItems.length * slideItem.offsetWidth) / (5 * slideItem.offsetWidth));
        // set index = 0;
        let slideIndex = 0;
        // click for next button
        sliderPopular.style.width = slideWidth * countSlide + 'px';
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
    })
    //----------------slide end--------------------






function stopTrailerInfo() {
    window.addEventListener('load', () => {
        const trailerInfo = document.querySelector('.preview-detail-trailer')
        const linkIframe = trailerInfo.querySelector('iframe');
        if (linkIframe.src.search('?autoplay=1') >= 0) {
            linkIframe.src = linkIframe.src.replace('?autoplay=1', '?')

        }
    })

}

function stopPlayingTrailer() {
    window.addEventListener('load', () => {
        const trailerBanner = document.querySelector('.trailer-film')
        const linkIframeBanner = trailerBanner.querySelector('iframe');

        if (linkIframeBanner.src.search('autoplay=1') > -1) {
            linkIframeBanner.src = linkIframeBanner.src.replace('?autoplay=1', '?')
        } else {
            linkIframeBanner.src = linkIframeBanner.src.replace('?', '?autoplay=1')
        }
        alert(linkIframeBanner.src)
    })
}