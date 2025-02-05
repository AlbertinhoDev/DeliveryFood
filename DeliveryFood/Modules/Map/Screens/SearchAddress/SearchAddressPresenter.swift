import UIKit

protocol SearchAddressPresententationLogic {}

final class SearchAddressPresenter {
    weak var searchAddressViewController: SearchAddressViewController?
    
    var router: SearchAddressRoutingLogic?
}

extension SearchAddressPresenter: SearchAddressPresententationLogic {}
