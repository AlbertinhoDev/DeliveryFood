import UIKit

class MapViewController: UIViewController {
    var router: MapRoutingLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        let button = UIButton(type: .system)
        
        button.setTitle("Show search address", for: .normal)
    }
    
    @objc private func didTapSearchAddressButton() {
        router?.showSearchAddress()
    }
    
    @objc private func didTapRestaurantsListButton() {
        router?.showRestaurantsList()
    }
    
    @objc private func didTabNextButton() {
        router?.showCatalog()
    }
}

