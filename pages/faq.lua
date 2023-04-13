_themes = require("./meta/themes")
local Querier = require("./components/Querier/Querier")

local MainPage = HTML:new_webpage()
local config = {
    website_title = "LuaSparks!"
}

MainPage.Head = {
    (title)(){config.website_title}(title),   
    (link)({rel="preconnect", href="https://fonts.googleapis.com"})(),
    (link)({rel="preconnect", href="https://fonts.gstatic.com", crossorigin = true})(),
    (link)({href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Quicksand&display=swap", rel="stylesheet"})(),    
}

MainPage.Body = {
    (Querier)({})()
}

MainPage.Footer = {
    (p)({style={color="black"}}){
        "Created by Konstantin Victoria, 2023"
    }(p)
}


return MainPage