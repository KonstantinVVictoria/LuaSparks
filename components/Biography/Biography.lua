package.path = _route_path
local HTML = require("main")
local style = require("./components/Biography/style")
return HTML.Component:new(
    function(config)
            return
            div({ class = "Biography", style = style.Biography_Container }){
                h1({ class = "title", style = style.Biography_Title })(
                    config.name
                )(h1),
                img({
                    class = "profile",
                    src = "https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg",
                    style = "height:2rem; width:2rem;"
                })(),
                p({ class = "desc", style = "color:green" })(
                    config.description
                )(p),
            }(div)
        end)