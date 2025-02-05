import UIKit

protocol RestaurantListPresentationLogic {}

final class RestaurantListPresenter {
    weak var restaurantsListViewController: RestaurantsListDisplayLogic?
    var router: RestaurantListRoutingLogic?
}

extension RestaurantListPresenter: RestaurantListPresentationLogic{}
