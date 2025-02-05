import UIKit

protocol SearchAddressDisplayLogic: AnyObject {}

class SearchAddressViewController: UIViewController {
    
    var presenter: SearchAddressPresententationLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }
}

extension SearchAddressViewController: SearchAddressDisplayLogic {}
