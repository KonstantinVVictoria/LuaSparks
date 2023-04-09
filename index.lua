_route_path = './?.lua;' .. package.path
_themes = require("./meta/themes")
package.path = _route_path
local NavBar = require("./components/NavBar/NavBar")
local Main = require("./components/Main/Main")
local InfoBar = require("./components/InfoBar/InfoBar")
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
    (NavBar)()(),
    (Main)(){
        (h1)({
            id="SiteLogo",
            onclick=JS("helloWorld")(),
            style=Style({
                color = "white",
                ["font-size"] = "2rem",
                padding = "1rem",
                ["text-align"] = "center"
        })}){
            "LuaSparks✨"
        }(h1),
        (h1)({style=Style({
                color = "white",
                ["font-size"] = "1.5rem",
                padding = "1rem",
                ["text-align"] = "center"
        })}){
            "A fast, light Lua front-end framework."
        }(h1)
    }(Main),
    (InfoBar)()(),
    (Main)(){
        (h1)({style=Style({
                color = "white",
                ["font-size"] = "2rem",
                padding = "1rem",
                ["text-align"] = "center"
        })}){
            "Download on Github!"
        }(h1),
        (img)({
            class="GithubLogo",
            src="images/github.png", 
            id="DownloadLogo",
            onclick= JS("directTo")("https://github.com/KonstantinVVictoria/LuaSparks"),
            style=Style({
                ["font-size"] = "1.5rem",
                padding = "1rem",
                ["text-align"] = "center",
                filter="invert()",
                height="8rem",
                width="8rem",
                cursor="pointer",
                opacity="100%",
                transition="opacity 200ms ease",
        })})()
    }(Main)
}

MainPage.write_to("./website/")
