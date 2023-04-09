package.path = _route_path
return {
    SideBar_container = Style(_themes.centered_column_vertically,
            {
                ["border-right"] = "1px solid black",
                position = "fixed",
                height = "100%",
                width = "15rem",
                left = "0"
            }
        ),
}