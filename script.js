window.addEventListener('scroll', function() {
    const header = document.getElementById('stickyHeader');
    const sticky = header.offsetTop;

    if (window.pageYOffset > sticky) {
        header.classList.add('sticky');
    } else {
        header.classList.remove('sticky');
    }
});
