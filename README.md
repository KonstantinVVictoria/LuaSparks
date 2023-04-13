<p align="center">
  <img src="https://github.com/KonstantinVVictoria/LuaSparks/blob/main/LuaSparksBanner.png?raw=true" alt="LuaSparks Banner"/>
</p>


# LuaSparks: A Lightweight, Stateless, and Modular LUA Front-End Framework

LuaSparks is a cutting-edge front-end framework designed for developers who seek a clean, efficient, and scalable solution for building modern web applications. Built on the powerful LUA language, LuaSparks empowers developers to create rich user experiences with a focus on predictability, modularity, and performance.

## Stateless Rendering for Predictable and Side-Effect Free UI

At the heart of LuaSparks lies its stateless rendering engine, ensuring a predictable and side-effect free user interface. By minimizing the reliance on internal state, LuaSparks promotes better coding practices and reduces the complexity of managing UI state. This results in an overall smoother, more reliable experience for both developers and end-users.

## Component-Based Design for Reusable and Scalable Architecture

LuaSparks adopts a component-based approach, allowing developers to create modular and reusable UI elements. This not only reduces code duplication but also makes it easier to scale and maintain web applications. With LuaSparks, you can build complex UIs by composing smaller, self-contained components, making your codebase more organized and easier to manage.

## CSS Modularity for Intuitive and Conflict-Free Styling

One of the standout features of LuaSparks is its CSS modularity. The framework allows developers to abstract and modularize CSS designs in LUA, which significantly reduces style conflicts and makes styling more intuitive. This unique approach to CSS management streamlines the process of combining and organizing styles, leading to cleaner and more efficient code.

## Lightweight and Fast Performance

LuaSparks is designed to be incredibly lightweight and fast, with core modules taking up just 28 kb. This ensures that your web applications load quickly and efficiently, providing a seamless experience for users. Moreover, LuaSparks delivers highly optimized pages to the client, with zero redundancies in CSS and JavaScript statements. This level of optimization guarantees that your web applications run smoothly and perform well on any device.

# Quick Guide

### Create a Webpage
Under the pages subfolder, create a new webpage called: "index.lua"
```lua
local MainPage = HTML:new_webpage()
```
Create your first batch HTMLUA elements for the Head section of the webpage!
HTMLUA syntax is in the form:
```lua
(div)({class="hello", id="world"}){"hello world"}(div)
--or
(tag)({attributes...}){children}(tag)
```
which is equivalent to:
```html
<div class="hello" id="world">Hello World<div>
```
For elements with no closing tag:
```lua
(img)({class="hello", id="world"})()
```
Simple!
Now that we're familiar with HTMLUA syntax, let's make our Head elements:
```lua
local MainPage = HTML:new_webpage()
MainPage.Head = {
    (meta)({ charset = "UTF-8" })(),
    (meta)({ name = "viewport", content = "width=device-width, initial-scale=1.0" })(),
    (meta)({ ["http-equiv"] = "X-UA-Compatible", content = "ie=edge" })(),
    (title)(){"First Webpage!"}(title),
    (link)({rel="stylesheet", href="styles.css"})(),
    (link)({rel="stylesheet", href="css_comp.css"})(),   
}
```
And now our body...
```lua
local MainPage = HTML:new_webpage()
MainPage.Head = {
    (meta)({ charset = "UTF-8" })(),
    (meta)({ name = "viewport", content = "width=device-width, initial-scale=1.0" })(),
    (meta)({ ["http-equiv"] = "X-UA-Compatible", content = "ie=edge" })(),
    (title)(){"First Webpage!"}(title),
    (link)({rel="stylesheet", href="styles.css"})(),
    (link)({rel="stylesheet", href="css_comp.css"})(),   
}

MainPage.Body = {
    (div)({id="greeting"}){"Hello world!"}(div)
}
```
Lastly, let's export this by simply returning our webpage:
```lua
local MainPage = HTML:new_webpage()
MainPage.Head = {
    (meta)({ charset = "UTF-8" })(),
    (meta)({ name = "viewport", content = "width=device-width, initial-scale=1.0" })(),
    (meta)({ ["http-equiv"] = "X-UA-Compatible", content = "ie=edge" })(),
    (title)(){"First Webpage!"}(title),
    (link)({rel="stylesheet", href="styles.css"})(),
    (link)({rel="stylesheet", href="css_comp.css"})(),   
}

MainPage.Body = {
    (div)({id="greeting"}){"Hello world!"}(div)
}
return MainPage
```
In build.lua, let's import our webpage and render it!
```lua
_route_path = './?.lua;' .. package.path -- do not touch!
package.path = _route_path -- do not touch!
HTML = require("./modules/HTML") -- do not touch!

local index = require("./pages/index")
index.write_to("/index.html")
HTML:render()
```
Now, all you have to do is run "lua build.lua" on your console, given that that the current directory is in the root directory, which is the folder harboring all of our project files.

The CSS, HTML, and JavaScript files for your website will be compiled to the "website" folder, and all you have to do is open "index.html" in your browser!

### Making components
Under the "components" folder, make a subfolder called "Bio", and then make two new files under it: "Bio.lua" and "style.lua". "Bio.lua" Will be the scaffold of your component, while "style.lua" will imbue the scaffold with CSS designs.

In "Bio.lua", write:
```lua
local style = require("./components/Bio/style") --import our style

return HTML.Component:new(function(config) --define and export our component
    --config will contain all the attributes of our component
    return 
    (h1)({style=style.Name}){config.name}(h1) --we can use config to parameterize our component
end)
```
In "style.lua", write:
```lua
return {
    Name = {
        color = "red" --This will make our text red!
    }
}
```
Finally, let's import our component to our webpage:
```lua
local Bio = require("./components/Bio/Bio") --import
local MainPage = HTML:new_webpage()
MainPage.Head = {
    (meta)({ charset = "UTF-8" })(),
    (meta)({ name = "viewport", content = "width=device-width, initial-scale=1.0" })(),
    (meta)({ ["http-equiv"] = "X-UA-Compatible", content = "ie=edge" })(),
    (title)(){"First Webpage!"}(title),
    (link)({rel="stylesheet", href="styles.css"})(),
    (link)({rel="stylesheet", href="css_comp.css"})(),   
}

MainPage.Body = {
    (div)({id="greeting"}){"Hello world!"}(div),
    (Bio)({name="Tom"})() --Use!
}
```
## Guides that are coming soon...
### Composting and Abstracting CSS Styles
### Using JavaScript
### Best Practices

# Tentative Works
1. Leveraging Markov Chains to design predictable state changes.
2. React Component Support
3. Href Query Parameter Handler
