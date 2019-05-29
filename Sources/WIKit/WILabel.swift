struct WILabel: ContentDrawable {
    let key = "p"
    private(set) var content = ""
    var backgroundColor = WIColor.clear
    var size = WISize(width: .automatic, height: .automatic)
    
    var text: String = "" {
        willSet {
            self.content = newValue
        }
    }
    
    init() {}
}
