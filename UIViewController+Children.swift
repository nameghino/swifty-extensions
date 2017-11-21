import UIKit

extension UIViewController {
    func add(viewController: UIViewController) {
        viewController.willMove(toParentViewController: self)
        addChildViewController(viewController)
        view.addSubview(viewController.view)
        viewController.didMove(toParentViewController: self)
    }

    func remove() {
        guard parent != nil else { return }
        willMove(toParentViewController: nil)
        view.removeFromSuperview()
        removeFromParentViewController()
        didMove(toParentViewController: nil)
    }
}

