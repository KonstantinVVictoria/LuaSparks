function helloWorld() {
  console.log("Hello World");
}
function clickCard(element_id, Main, Caption) {
  const element = document.getElementById(element_id);
  const showMain = element.getAttribute("showmain") == "true";
  element.setAttribute("showmain", (!showMain).toString());
  element.innerHTML = showMain ? Main : Caption;
}
function directTo(link) {
  window.location.href = link;
}