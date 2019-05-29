struct WIStackView: ContentDrawable {
    let key = "div"
    private(set) var content = ""
    var backgroundColor = WIColor.clear
    var size = WISize(width: .automatic, height: .automatic)
    
    private(set) var subviews = [ContentDrawable]()
    
    init() {}
    
    mutating func addSubview(_ view: ContentDrawable) {
        subviews.append(view)
    }
    
    mutating func insertSubview(_ view: ContentDrawable, at position: Int) {
        subviews.insert(view, at: position)
    }
    
    private func changeViewsWidth() {
        // TODO: Change width logic
    }
}
