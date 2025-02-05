import UIKit

protocol MainScreenBuildable {
    func makeCatalogViewController(router: CatalogRoutingLogic) -> UIViewController
}

final class MainScreenBuilder {} //сборка экрана и зависимостей ViewController

extension MainScreenBuilder: MainScreenBuildable{
    func makeCatalogViewController(router: CatalogRoutingLogic) -> UIViewController {
        let viewController = CatalogViewController()
        let presenter = CatalogPresenter()
        viewController.presenter = presenter
        presenter.viewController = viewController
        presenter.router = router
        
        return viewController
    }
}
