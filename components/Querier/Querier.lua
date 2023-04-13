local style = require("./components/Querier/style")




return HTML.Component:new(function()
    return 
    (div)({id="OpenAIQA", style=style.Container}){
        (h1)({style=style.Question}){
            "Ask GPT a question!"
        }(h1),
        (input)({id="OpenAI-input", style={color="black"}})(),
        (button )({style={color="black"}, onclick=JS("makeQuery")()}){"Click Me"}(button),
        (h3)({style={color="black"}, state="query"}){}(h3)
    }(div)
end)