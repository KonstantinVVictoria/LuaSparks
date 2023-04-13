let StateTemplate = {};

StateTemplate.init = function () {
  let _internal = {};
  return {
    add: function (state_name, init_value) {
      let _callback = () => {};
      _internal[state_name] = {
        value: init_value,
        update: function (new_value) {
          _internal[state_name].value = new_value;
          _callback(_internal[state_name].value);
        },
      };
      return {
        on_change: function (callback) {
          _callback = (new_state) => callback(new_state);
        },
      };
    },
    get: function (state_name) {
      return _internal[state_name];
    },
  };
};

let State = StateTemplate.init();
// State.add("user", null).on_change(function (new_value) {
//   const element = document.querySelector('[state="user"]');
//   element.innerText = new_value;
// });

// State.get("user").update("Konstantin");
function helloWorld() {
  State.get("user").update("Konstantin");
}
function directTo(link) {
  window.location.href = link;
}
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
