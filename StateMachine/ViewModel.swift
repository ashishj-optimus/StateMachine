import Foundation
import UIKit

protocol ViewModelProtocol {
    func getViewCorresponding(to state: State) -> UIView
}
class ViewModel: ViewModelProtocol {
    var currentState: State
    
    init(currentState: State) {
        self.currentState = currentState
    }
    
    func getViewCorresponding(to state: State) -> UIView {
        switch state {
        case .loading:
            return loadingView
        case .loaded:
            return loadedView
        case .error:
            return errorView
        case .none:
            return UIView()
        }
    }
    
    lazy var loadingView: LoadingView = {
        let view = LoadingView()
        return view
    }()

    lazy var loadedView: LoadedView = {
        let view = LoadedView()
        return view
    }()

    lazy var errorView: ErrorView = {
        let view = ErrorView()
        return view
    }()
}


