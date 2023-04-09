package.path = _route_path
local HTML = require("main")
local style = require("./components/InfoBar/style")

return HTML.Component:new(function(config)
    return 
    (div)({class="CardContainer", style=style.CardContainer}){
        (h1)({class="card_image", style=style.CardImage}){
            config.description
        }(h1),
        (h1)({class="card_title", style=style.CardTitle}){config.title}(h1)
    }(div)

end)