import UIKit

final class MapFlowCoordinator: CoordinatorOutput {
    var finishFlow: (() -> Void)?
    
    private let router: NavigationRouter
    
    init(router: NavigationRouter) {
        self.router = router
    }
}

extension MapFlowCoordinator: Coordinator {
    func start() {
        let viewController = MapViewController()
        viewController.router = self
        router.setRoot(viewController: viewController, animated: true)
    }
}

extension MapFlowCoordinator: MapRoutingLogic {

    func showSearchAddress() {
        let viewController = SearchAddressViewController()
        viewController.router = self
        router.push(viewController, animated: true)
    }
    
    func showRestaurantsList() {
        let viewController = RestaurantsListViewController()
        viewController.router = self
        router.push(viewController, animated: true)
    }
    
    func showCatalog() {
        finishFlow?()
    }
    
}
