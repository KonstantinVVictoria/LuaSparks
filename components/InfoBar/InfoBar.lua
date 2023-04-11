package.path = _route_path
local style = require("./components/InfoBar/style")
local Card = require("./components/InfoBar/Card")

local infos = {
    {
        title="Fast!",
        description = "⚡",
        caption = "Fast compile time!"
    },
    {
        title="Reliable",
        description = "💪",
        caption = "Built with no side-effects in mind."
    },
    {
        title="Light",
        description = "🪶",
        caption = "Ultra-lightweight; Cached JS and CSS!"
    },
    {
        title="Maintainable",
        description = "✏️",
        caption = "Clean, component-based styling."
    }
}
return HTML.Component:new(function(config)
    local Cards = {}
    for i, card in ipairs(infos) do
        Cards[i] = Card(card)()
    end
    return 
    (section)({class="Cards", style=style.Cards}){
        Cards
    }(section)

end)