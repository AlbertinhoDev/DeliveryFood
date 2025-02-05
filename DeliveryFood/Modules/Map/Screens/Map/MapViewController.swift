import UIKit

protocol MapDisplayLogic: AnyObject {} //протокол View для MapView, AnyObject потому что только классы будут наследоваться, как presenter может обращаться к view

class MapViewController: UIViewController {
    
    var presenter: MapPresentationLogic?//ссылка на протокол Presenter для MapView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        let button = UIButton(type: .system)
        
        button.setTitle("Show search address", for: .normal)
        button.addTarget(self, action: #selector(didTabNextButton), for: .touchUpInside)
        button.frame = CGRect(origin: .zero, size: .init(width: 150, height: 50))
        button.center = view.center
        
        view.addSubview(button)
    }
    
    @objc private func didTapSearchAddressButton() {
        //router?.showSearchAddress()
    }
    
    @objc private func didTapRestaurantsListButton() {
        //router?.showRestaurantsList()
    }
    
    @objc private func didTabNextButton() {
        //router?.showCatalog()
    }
}

extension MapViewController: MapDisplayLogic { //имплементирование протокола View для MapView
    
}
