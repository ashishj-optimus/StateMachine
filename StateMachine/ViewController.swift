import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    private var currentState: State = .loading {
        didSet {
            let subviews = stackView.arrangedSubviews
            _ = subviews.map {$0.removeFromSuperview()}
            
            stackView.addArrangedSubview(viewModel.getViewCorresponding(to: currentState))
        }
    }
    let viewModel: ViewModelProtocol = ViewModel(currentState: .loading)
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialState()
    }
    
    func loadInitialState() {
        stackView.addArrangedSubview(viewModel.getViewCorresponding(to: currentState))
    }

    @IBAction func loadingTapped() {
        currentState = .loading
    }
    
    @IBAction func loadedTapped() {
        currentState = .loaded
    }
    
    @IBAction func errorTapped() {
        currentState = .error
    }
    
    @IBAction func noneTapped() {
        currentState = .none
    }
    
}

