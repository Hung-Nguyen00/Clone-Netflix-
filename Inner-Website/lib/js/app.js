// event click Input

(() => {
    const search = document.querySelector('.fa-search');
    const playMovieBanner = document.querySelector('.banner-btn-play')
    const infoMovieBanner = document.querySelector('.banner-btn-info')
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
    setTimeout(() => {
        document.querySelector('header').classList.add('z-index');
        document.querySelector('.banner-content-text').classList.add('hide')
        document.querySelector('.banner-content-img img').classList.add('zoom-out')
        document.querySelector('.trailer-film').querySelector('iframe').classList.add('show')
    }, 4000);
})();