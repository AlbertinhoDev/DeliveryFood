import UIKit

final class MapFlowCoordinator: CoordinatorOutput {
    var finishFlow: (() -> Void)?
    
    private let router: NavigationRouter
    private let screenBuilder: MapScreenBuildable
    private let diContainer: MapDIContainerable
    
    init(router: NavigationRouter,
         screenBuilder: MapScreenBuildable = MapScreenBuilder(),
         diContainer: MapDIContainer = MapDIContainer())
    {
        self.router = router
        self.screenBuilder = screenBuilder
        self.diContainer = diContainer
    }
}

extension MapFlowCoordinator: Coordinator {
    func start() {
        let viewController = screenBuilder.makeMapViewController(router: self, diContainer: diContainer)
        router.setRoot(viewController: viewController, animated: true) //не всегда обязательно делать рутовый viewcontroller, а мжно просто push
    }
}

extension MapFlowCoordinator: MapRoutingLogic {

    func showSearchAddress() {
//        let viewController = SearchAddressViewController()
//        viewController.router = self
//        router.push(viewController, animated: true)
    }
    
    func showRestaurantsList() {
//        let viewController = RestaurantsListViewController()
//        viewController.router = self
//        router.push(viewController, animated: true)
    }
    
    func showCatalog() {
        finishFlow?()
    }
    
}
