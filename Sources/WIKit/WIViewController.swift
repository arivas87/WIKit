struct WIViewController {
    var title: String
    var view = WIView()
    
    var code: String {
        let style = "background-color: \(view.backgroundColor.rgba)"
        return """
        <html>
        <head>
        <title>\(title)</title>
        </head>
        <body style="\(style)">
        \(view.subviews.reduce("", { $0 + $1.code }))
        </body>
        </html>
        """
    }
    
    init(title: String) {
        self.title = title
        self.view = WIView()
    }
}
