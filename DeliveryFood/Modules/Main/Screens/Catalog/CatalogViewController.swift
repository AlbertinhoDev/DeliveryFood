import UIKit

protocol CatalogDisplayLogic: AnyObject {}

final class CatalogViewController: UIViewController {
    
    var presenter: CatalogPresentationLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let button = UIButton(type: .system)
        button.setTitle("FinishFlow", for: .normal)
        button.addTarget(self, action: #selector(didTabMapButton), for: .touchUpInside)
        button.frame = CGRect(origin: .zero, size: .init(width: 150, height: 50))
        button.center = view.center
        
        view.addSubview(button)
    }
    
    @objc private func didTabMapButton() {
        presenter?.didTabMapButton()
    }
}

extension CatalogViewController: CatalogDisplayLogic {}
