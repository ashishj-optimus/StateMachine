import UIKit

class ErrorView: UIView {
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
