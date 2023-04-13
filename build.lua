_route_path = './?.lua;' .. package.path
package.path = _route_path
HTML = require("./modules/HTML/HTML")
local index = require("./pages/index")
local faq = require("./pages/faq")

index.write_to("/index.html")
faq.write_to("/faq.html")
HTML:render()