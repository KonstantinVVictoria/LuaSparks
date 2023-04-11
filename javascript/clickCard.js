function clickCard(element_id, description, caption) {
  const element = document.getElementById(element_id);
  const showMain = element.getAttribute("showmain") == "true";
  element.setAttribute("showmain", (!showMain).toString());
  if (showMain) {
    element.textContent = description;
    element.style.fontSize = "";
  } else {
    element.textContent = caption;
    element.style.fontSize = "1rem";
  }
}
