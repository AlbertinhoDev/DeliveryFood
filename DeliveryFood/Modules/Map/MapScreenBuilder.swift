import UIKit

protocol MapScreenBuildable {
    func makeMapViewController(router: MapRoutingLogic, diContainer: MapDIContainerable) -> UIViewController
}

final class MapScreenBuilder {} //сборка экрана и зависимостей ViewController


extension MapScreenBuilder: MapScreenBuildable {    
    func makeMapViewController(router: MapRoutingLogic, diContainer: MapDIContainerable) -> UIViewController {
        let viewContoller = MapViewController()
        let presenter = MapPresenter(service: diContainer.service)
        
        viewContoller.presenter = presenter //связь Presenter-View-Router, теперь, когда к примеру нажмем на кнопку перехода на другой view на экране, обращаемся уже не к роутеру, а к презентеру о каком-то действии, презентер командует простыми словами
        presenter.viewController = viewContoller
        presenter.router = router
        
        return viewContoller
    }
}
