local HTML = require("main")
local style = require("./components/NavBar/style")

local function navbar_item(title, link)
    return {
        title = title,
        link = link
    }
end

local navbar_items = {
    navbar_item("Home", ""),
    navbar_item("FAQ", ""),
    navbar_item("Contact Me", ""),       
}


local function NavBarItem(params)
    return 
    h2({class="navbar-item", href=params.link, style=style.NavBar_Item}){
        params.title
    }(h2)
end

return HTML.Component:new(function()
    local NavBarItems = {}
    for i, Item in ipairs(navbar_items) do 
        NavBarItems[i] = NavBarItem(Item)
    end

    return 
    nav({class="NavBarContainer", style=style.NavBar_Container}){
        NavBarItems
    }(nav)

end)