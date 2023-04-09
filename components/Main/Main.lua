package.path = _route_path
local HTML = require("main")
local style = require("./components/Main/style")


return HTML.Component:new(function(config)
    return 
    section({class="Main", style=style.Background}){
        (h1)({style=style.SplashTitle}){
            "LuaSparks✨ — A fast, light Lua front-end framework."
        }(h1)
    }(section)

end)