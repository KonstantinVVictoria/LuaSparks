package.path = _route_path
local style = require("./components/Main/style")


return HTML.Component:new(function(config)
    return 
    (section)({class="Main", style=style.Background}){
        config.children
    }(section)
end)