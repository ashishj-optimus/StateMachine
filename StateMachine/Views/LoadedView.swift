import UIKit

class LoadedView: UIView {
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
