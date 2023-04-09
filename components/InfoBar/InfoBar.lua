package.path = _route_path
local HTML = require("main")
local style = require("./components/InfoBar/style")
local Card = require("./components/InfoBar/Card")

local infos = {
    {
        title="Fast!",
        description = "⚡"
    },
    {
        title="Reliable",
        description = "💪"
    },
    {
        title="Light",
        description = "🪶"
    },
    {
        title="Maintainable",
        description = "✏️"
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