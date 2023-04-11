package.path = _route_path

return {
    Cards = {
        ["background-color"] = "white",
        width = "100%",
        display = "flex",
        ["box-shadow"] = "0px 0px 30px rgba(0,0,0,0.3)",
        ["overflow-x"] = "auto",
        ["box-sizing"] = "border-box",
        ["align-items"] = "center",
        padding = "1rem",
        gap = "1rem",
        ["justify-content"] = "center"
    },
    CardContainer = {
        height ="15rem",
        display = "flex",
        ["flex-direction"] = "column",
        width ="11rem",
        ["box-shadow"] = "0px 0px 25px rgba(0,0,0,0.2)",
        ["border-radius"] = "15px",
        ["overflow"] = "hidden",
        ["flex-shrink"] = 0,
        cursor = "pointer"
    },
    CardImage = {
        display = "flex",
        ["align-items"] = "center",
        ["justify-content"] = "center",
        ["flex-grow"] = "4",
        ["font-size"] = "600%",
        padding = "1rem",
        margin="0"
    },
        CardTitle = {
        ["flex-grow"] = "1",
        display = "flex",
        ["justify-content"] = "center",
        color = _themes.main_color, 
    },
}