import UIKit

protocol MapDIContainerable {
    var service: Servicable {get}
}

final class MapDIContainer: MapDIContainerable  {//отвечает за зависимости

    let service: Servicable
    
    init(service: Servicable = Service()) {
        self.service = service
    }
}
