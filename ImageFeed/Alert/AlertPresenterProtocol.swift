import Foundation

protocol AlertPresenterProtocol: AnyObject {
    func showError(for model: AlertModel)
}
