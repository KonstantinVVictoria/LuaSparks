_route_path = './?.lua;' .. package.path
_themes = require("./meta/themes")
package.path = _route_path
local inspect = require('./modules/inspect/inspect')
local NavBar = require("./components/NavBar/NavBar")
local Main = require("./components/Main/Main")
local SideBar = require("./components/SideBar/SideBar")
local HTML = require("main")

local MainPage = HTML:new_webpage()
local config = {
    website_title = "LuaSparks!"
}

MainPage.Head = {
    meta({ charset = "UTF-8" })(),
    meta({ name = "viewport", content = "width=device-width, initial-scale=1.0" })(),
    meta({ ["http-equiv"] = "X-UA-Compatible", content = "ie=edge" })(),
    title(){config.website_title}(title),
    link({rel="stylesheet", href="styles.css"})(),
    link({rel="preconnect", href="https://fonts.googleapis.com"})(),
    link({rel="preconnect", href="https://fonts.gstatic.com", crossorigin = true})(),
    link({href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Quicksand&display=swap", rel="stylesheet"})(),    
}

MainPage.Body = {
    NavBar()(),
    Main()(),
}

MainPage.write_to("./website/")
