package.path = _route_path
local centered = {
    display = "flex",
    ["align-items"] = "center",
    ["justify-content"] = "center",
}
return {
    NavBar_Container = Style(_themes.centered,
        {
            width = "100vw",
            padding = "1rem 0rem",
            display = "flex",
            ["justify-content"]  = "space-evenly",
            color = _themes.main_color,
            position = "sticky",
            ["box-shadow"] = "0px 0px 20px rgba(0,0,0,0.2)"
        }
        ),
    NavBar_Item = Style({
        ["font-size"] = "1rem",
            margin = "0px",
            ["font-weight"] = "800",
            ["cursor"] = "pointer"
        }, _themes.centered)
}