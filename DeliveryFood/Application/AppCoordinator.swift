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
        mapCoordinator.finishFlow = { [unowned self] in
            startMainFlow()
        }
        mapCoordinator.start()
    }
    
    private func startMainFlow() {
        
    }
}

extension AppCoordinator: Coordinator {
    func start() {
        startMapFlow()
    }
}





