import UIKit

final class MainFlowCoordinator: CoordinatorOutput {
    var finishFlow: (() -> Void)? //после выполнения данного свойства, приложение переходит в AppCoordinator и запускается метод  private func startMapFlow()
    
    private var router: NavigationRouter
    private let screenBuilder: MainScreenBuildable //ссылка на протокол билдера
    
    init(router: NavigationRouter,
         screenBuilder: MainScreenBuildable = MainScreenBuilder())//завязываем дефолтное значение
    {
        self.router = router
        self.screenBuilder = screenBuilder
    }
    
}

extension MainFlowCoordinator: Coordinator {
    func start() {
        let viewController = screenBuilder.makeCatalogViewController(router: self)//создаем ViewControler c помощью билдера MainScreenBuilder
        router.setRoot(viewController: viewController, animated: true)
    }
}

extension MainFlowCoordinator: CatalogRoutingLogic {
    func showMapScreen() {
        finishFlow?()
    }
}



