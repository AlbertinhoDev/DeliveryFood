import UIKit

protocol Servicable {
    func method() async throws -> Data //Создаем фейковый сервис запрос
}
final class Service{}

extension Service: Servicable {
    func method() async throws -> Data {
        try await Task.sleep(for: .seconds(1))
        return Data()
    }
}
