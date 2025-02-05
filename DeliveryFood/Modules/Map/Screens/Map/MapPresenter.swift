import UIKit

protocol MapPresentationLogic { //Протокол Presenter для MapView, как view может обращаться к presenter
    //тут логика действий presenter после события на view
    func didTapNextButton()
    
    func didTapRestauranButton()
    func didTapSearchButton()
}

final class MapPresenter {
    weak var viewController: MapDisplayLogic? //ссылка на протокол MapView, обязательно чтобы была слабой, когда модуль уходит из памяти, объект деинициализируется
    var router: MapRoutingLogic? //ссылка на протокол роутинга
    
    private let service: Servicable//на этот presenter прокидываем логику фейкового сервиса 
    
    init(service: Servicable) {
        self.service = service
    }
}

extension MapPresenter: MapPresentationLogic {
    func didTapRestauranButton() {
        router?.showRestaurantsList()
    }
    
    func didTapSearchButton() {
        router?.showSearchAddress()
    }
    
    func didTapNextButton() {
        router?.showCatalog()
    }
} //имплементирование протокола Presenter для MapView
