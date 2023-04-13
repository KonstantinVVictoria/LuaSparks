State.add("query", null).on_change(function (new_value) {
  const element = document.querySelector('[state="query"]');
  console.log(element);
  element.textContent = new_value;
});
