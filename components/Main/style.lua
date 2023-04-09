package.path = _route_path

return {
    Background = Style({
        ["background-color"] = _themes.main_color,
        ["flex-grow"] = "1",
        width = "100vw",
        ["flex-direction"] = "column",
        display = "flex",
        height = "100vh",
        ["box-shadow"] = "0px 10px 30px rgba(0,0,0,0.3)",
    }, _themes.centered),
    SplashTitle = Style({
        color = "white",
        ["font-size"] = "2rem",
        padding = "1rem",
        ["text-align"] = "center"
    }),
    SplashDesc = Style({
        color = "white",
        ["font-size"] = "1.5rem",
        padding = "1rem",
        ["text-align"] = "center"
    })
}