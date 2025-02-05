import UIKit

protocol RestaurantsListDisplayLogic: AnyObject {}

class RestaurantsListViewController: UIViewController {
    
    var presenter: RestaurantListPresentationLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}

extension RestaurantsListViewController: RestaurantsListDisplayLogic {}
