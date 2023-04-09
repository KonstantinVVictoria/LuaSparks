package.path = _route_path

return {
    Background = Style({
        ["background-color"] = _themes.main_color,
        ["flex-grow"] = "1",
        width = "100%"
    }, _themes.centered),
    SplashTitle = Style({
        color = "white"
    })
}