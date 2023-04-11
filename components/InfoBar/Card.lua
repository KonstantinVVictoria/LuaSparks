package.path = _route_path
local style = require("./components/InfoBar/style")


return HTML.Component:new(function(config)

    local Caption = HTML:stringify{
        (h1)({
            class="card_image", 
            style=style.CardImage
        }){
            config.description
        }(h1),
        (h1)({
            class="card_title", 
            style=css_combine(style.CardTitle,  {
                ["padding"] = "0rem 1rem",
                ["font-size"] = "1rem"
            })
        }){
            config.caption
        }(h1)
    }
    local Main = HTML:stringify{
        (h1)({class="card_image", style=style.CardImage}){
            config.description
        }(h1),
        (h1)({class="card_title", style=style.CardTitle}){config.title}(h1)
    }
    return 
    (div)({
        id = config.title, 
        class="CardContainer", 
        style=style.CardContainer,
        showmain="false",
        onclick=JS("clickCard")(config.title, Main, Caption)
    }){
        (h1)({class="card_image", style=style.CardImage}){
            config.description
        }(h1),
        (h1)({class="card_title", style=style.CardTitle}){config.title}(h1)
    }(div)

end)