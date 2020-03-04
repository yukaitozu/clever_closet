const initUpdateNavbarOnScroll = () => {
  var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
  var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.querySelector(".top-navbar").style.top = "0";
  } else {
    document.querySelector(".top-navbar").style.top = "-75px";
  }
  prevScrollpos = currentScrollPos;
  }
}

export { initUpdateNavbarOnScroll };
