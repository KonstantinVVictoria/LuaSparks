local HTML = require("main")
local style = require("./components/SideBar/style")

return HTML.Component:new(function()

    return 
    section({class="SideBar", style=style.SideBar_container}){
    }(section)

end)