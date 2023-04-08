_route_path = './?.lua;' .. package.path
package.path = _route_path
local inspect = require('./modules/inspect/inspect')
local Biography = require("./components/Biography/Biography")
local HTML = require("main")

local MainPage = HTML:new_webpage()


MainPage.Head = {
    meta({ charset = "UTF-8" })(),
    meta({ name = "viewport", content = "width=device-width, initial-scale=1.0" })(),
    meta({ ["http-equiv"] = "X-UA-Compatible", content = "ie=edge" })(),
    title()("LUA Website Builder")(title),
    link({rel="stylesheet", href="styles.css"})()
    
}

MainPage.Body = {
    section({ class = "hello", style = "color:red" }){
        Biography { name = "John", description = "Coolguy" }(),
        Biography { name = "John", description = "Coolguy" }(),
    } (section),
    }

MainPage.write_to("./website/")