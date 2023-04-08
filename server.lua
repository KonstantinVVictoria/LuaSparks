_route_path = './?.lua;' .. package.path
package.path = _route_path
local inspect = require('./modules/inspect/inspect')
local pegasus = require("./modules/pegasus/init")