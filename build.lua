_route_path = './?.lua;' .. package.path
package.path = _route_path
HTML = require("./modules/HTML/HTML")
local index = require("./pages/index")

index.write_to("/index.html")
HTML:render()