import UIKit

extension UIView {
    func takeSnapshot() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { fatalError("could not create image from current context") }
        UIGraphicsEndImageContext()
        return image
    }
}
