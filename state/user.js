State.add("user", null).on_change(function (new_value) {
  const element = document.querySelector('[state="user"]');
  element.innerText = new_value;
});

State.get("user").update("Konstantin");
