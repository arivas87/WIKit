public struct WIColor {
    var red: Int
    var green: Int
    var blue: Int
    var alpha: Float
    
    var rgba: String {
        return "rgba(\(red), \(green), \(blue), \(alpha))"
    }
    
    public static let clear = WIColor(red: 0, green: 0, blue: 0, alpha: 0)
    public static let white = WIColor(red: 255, green: 255, blue: 255, alpha: 1)
    public static let red = WIColor(red: 255, green: 0, blue: 0, alpha: 1)
    public static let green = WIColor(red: 0, green: 255, blue: 0, alpha: 1)
    public static let blue = WIColor(red: 0, green: 0, blue: 255, alpha: 1)
    public static let black = WIColor(red: 0, green: 0, blue: 0, alpha: 1)
}
