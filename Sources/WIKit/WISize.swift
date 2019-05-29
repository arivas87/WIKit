struct WISize {
    var width: Int
    var height: Int
    
    var cssValue: String {
        let widthText = calculateCSSValue(for: "width", withValue: width)
        let heightText = calculateCSSValue(for: "height", withValue: height)
        return widthText + " " + heightText
    }
    
    private func calculateCSSValue(for dimension: String, withValue value: Int) -> String {
        let result: String? = {
            switch value {
            case .fit: return "100%"
            case .automatic: return nil
            default: return String(value)
            }
        }()
        
        guard let text = result else {
            return ""
        }
        return dimension + "=\"" + text + "\""
    }
}

extension Int {
    static let fit = -1
    static let automatic = -2
}
