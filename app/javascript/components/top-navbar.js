const initUpdateNavbarOnScroll = () => {
  document.addEventListener("scroll", () => {
    if (window.pageYOffset == 0){
      document.querySelector(".top-navbar").classList.remove("hidden");
    }
    else {
      document.querySelector(".top-navbar").classList.add("hidden");
    }
  });
}

export { initUpdateNavbarOnScroll };
