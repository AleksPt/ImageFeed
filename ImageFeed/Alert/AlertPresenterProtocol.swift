import Foundation

protocol AlertPresenterProtocol: AnyObject {
    func showAlert(for model: AlertModel)
}
