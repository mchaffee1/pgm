import UIKit

extension UIView {
  func addChild<ViewType: UIView>(child: ViewType) -> ViewType {
    child.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(child)
    return child
  }
  
  func withCenterXEqualToAnchor(anchor: NSLayoutXAxisAnchor!,
    constant c: CGFloat = 0.0) -> Self {
      self.centerXAnchor.constraintEqualToAnchor(anchor, constant: c).active = true
      return self
  }
  
  func withTopEqualToAnchor(anchor: NSLayoutYAxisAnchor!,
    constant c: CGFloat = 0.0) -> Self {
      self.topAnchor.constraintEqualToAnchor(anchor, constant: c).active = true
      return self
  }
  
  func belowView(view: UIView,
    constant c: CGFloat = 0.0) -> Self {
      return self.withTopEqualToAnchor(view.bottomAnchor, constant: c)
  }
}
