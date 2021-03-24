import UIKit

class BaseVC : UIViewController, StoryboardInstantiable {
    
    enum AlertType: String{
        case start = "Start"
        case buy100GBButtonPressed = "Buy 100 Gb traffic"
        case stopVPNForMinute = "Stop VPN for minute"
    }
    
    func showAlert(_ alertType: AlertType) {
        let alert = UIAlertController(title: "Hi!", message: "You pressed \(alertType.rawValue) button", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
}
