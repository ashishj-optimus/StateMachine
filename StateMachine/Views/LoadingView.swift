import UIKit

class LoadingView: UIView {
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
