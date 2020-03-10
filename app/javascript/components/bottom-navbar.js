const initBottomIcons = () => {
  document.querySelectorAll("icons").forEach((icon) => {
    icon.addEventListener("click", (event) => {
      event.currentTarget.classList.toggle("icons-red");
    });
  });
}

export { initBottomIcons };

