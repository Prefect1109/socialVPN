import UIKit

class AppCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
        
    func start() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            let vc = HomeVC.instantiate()
            self.navigationController.pushViewController(vc, animated: true)
        }
    }
}
