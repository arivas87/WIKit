protocol ContentDrawable {
    var key: String { get }
    var content: String { get }
    var code: String { get }
    var backgroundColor: WIColor { get set }
    var size: WISize { get set }
}

extension ContentDrawable {
    var code: String {
        let style = "background-color: \(backgroundColor.rgba)"
        return """
        <\(key) style=\"\(style)\" \(size.cssValue)>
        \(content)
        </\(key)>
        """
    }
}
