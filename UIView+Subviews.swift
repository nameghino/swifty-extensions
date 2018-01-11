import UIKit

extension UIView {
    func addSubviewAndCenter(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        NSLayoutConstraint.activate([
            view.centerXAnchor.constraint(equalTo: centerXAnchor),
            view.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }


    func addSubviewAndFill(_ view: UIView, widthPercentage: CGFloat = 1.0, heightPercentage: CGFloat = 1.0) {
        addSubviewAndCenter(view)
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalTo: widthAnchor, multiplier: widthPercentage),
            view.heightAnchor.constraint(equalTo: heightAnchor, multiplier: heightPercentage),
        ])
    }
    
    func isSubview(of view: UIView) -> Bool {
        guard let p = superview else { return false }
        if p == view { return true }
        return p.isSubview(of: view)
    }
}
