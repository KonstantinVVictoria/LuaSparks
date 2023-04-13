function makeQuery() {
  let key = "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";
  const input = document.getElementById("OpenAI-input");
  fetch("https://api.openai.com/v1/chat/completions", {
    headers: {
      Authorization: "Bearer " + key,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: input.value || "hello" }],
    }),
    method: "POST",
  })
    .then((response) => response.json())
    .then((data) => {
      State.get("query").update(data.choices[0].message.content);
    });
}
