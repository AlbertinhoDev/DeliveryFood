import UIKit

final class AppCoordinator {
    private let window: UIWindow
    private let router: NavigationRouter
    
    init(windowScene: UIWindowScene) {
        let navigationController = UINavigationController()
        let router = NavigationRouter(navigationController: navigationController)
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.router = router
        self.window = window
    }
    
    private func startMapFlow() {
        let mapCoordinator = MapFlowCoordinator(router: router )
        mapCoordinator.start()
        
        mapCoordinator.finishFlow = { [unowned self] in
            startMainFlow()
        }
    }
    
    private func startMainFlow() {
        let mainCoordinator = MainFlowCoordinator(router: router)
        mainCoordinator.start()
        
        mainCoordinator.finishFlow = { [unowned self] in //здесь бессхозная ссылка потому что AppCoordinator живет очень долго, а се остальные потоки - нет
            startMapFlow()
        }
    }
}

extension AppCoordinator: Coordinator {
    func start() {
        startMapFlow()
    }
}





