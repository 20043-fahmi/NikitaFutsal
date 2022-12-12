window.onscroll = function () { scrollFunction() };
function scrollFunction() {
  if (screen.width < 1530 || screen.width > 1530) {
    if (document.body.scrollTop <= 30 && document.documentElement.scrollTop <= 30) {
      document.getElementById("navbar").style.padding = "2rem 0.5rem"
      document.getElementById("logo").style.fontSize = "1.6rem";
      document.getElementById("navbar").style.backgroundColor = "#000000af"
    } else {
      document.getElementById("navbar").style.padding = "1rem 0.5rem";
      document.getElementById("logo").style.fontSize = "1.4rem";
      document.getElementById("navbar").style.backgroundColor = "#1c1c1cfe"
    }
  } else if (screen.width <= 400) {
    if (document.body.scrollTop <= 30 && document.documentElement.scrollTop <= 30) {
      document.getElementById("navbar").style.padding = "0.8rem 0.5rem"
      document.getElementById("logo").style.fontSize = "1rem";

    } else {
      document.getElementById("navbar").style.padding = "0.4rem 0.5rem";
      document.getElementById("logo").style.fontSize = "0.6rem";
    }
  }
}


