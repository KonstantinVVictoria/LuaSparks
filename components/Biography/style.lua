package.path = _route_path
local centered = {
    display = "flex",
    ["align-items"] = "center",
    ["justify-content"] = "center",
}
return {
    Biography_Container = Style({
        ["background-color"] = _themes.main_color,
        padding = "1rem"
    }),
    Biography_Title = Style({
        ["font-size"] = "1rem",
        margin = "0px"
        }, centered)
}