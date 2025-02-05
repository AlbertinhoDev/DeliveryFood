import UIKit

protocol CatalogPresentationLogic {
    func didTabMapButton()//тут логика действий presenter после события на view
}

final class CatalogPresenter {
    weak var viewController: CatalogDisplayLogic?
    
    var router: CatalogRoutingLogic?
}

extension CatalogPresenter: CatalogPresentationLogic {
    func didTabMapButton() {
        router?.showMapScreen()
    }
}
