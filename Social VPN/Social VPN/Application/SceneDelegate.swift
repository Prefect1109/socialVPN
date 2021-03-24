import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        guard let winScene = (scene as? UIWindowScene) else { return }
        let navController = UINavigationController()
        self.coordinator = AppCoordinator(navigationController: navController)
        self.coordinator?.start()
        self.window = UIWindow(windowScene: winScene)
        self.window?.rootViewController = navController
        self.window?.makeKeyAndVisible()
    }

}
