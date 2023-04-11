package.path = _route_path
local style = require("./components/InfoBar/style")


return HTML.Component:new(function(config)
    local caption_target = config.title .. "_caption"
    return 
    (div)({
        id = config.title, 
        class="CardContainer", 
        style=style.CardContainer,
        showmain="false",
        onclick=JS("clickCard")(caption_target, config.title, config.caption)
    }){
        (h1)({class="card_image", style=style.CardImage}){
            config.description
        }(h1),
        (h1)({ id=caption_target, class="card_title", style=style.CardTitle}){config.title}(h1),
    }(div)

end)