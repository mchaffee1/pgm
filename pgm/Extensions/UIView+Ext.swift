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
  
  func withBottomEqualToAnchor(anchor: NSLayoutYAxisAnchor!,
    constant c: CGFloat = 0.0) -> Self {
      activateConstraint(bottomAnchor.constraintEqualToAnchor(anchor, constant: c))
      return self
  }
  
  func belowView(view: UIView,
    constant c: CGFloat = 0.0) -> Self {
      return self.withTopEqualToAnchor(view.bottomAnchor, constant: c)
  }
  
  func withWidthEqualToView(view: UIView,
    multiplier m: CGFloat = 1.0,
    constant c: CGFloat = 0.0) -> Self {
      self.withCenterXEqualToAnchor(view.centerXAnchor)
        .widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: m, constant: c).active = true
      return self
  }
  
  func withHeightEqualToView(view: UIView,
    multiplier m: CGFloat = 1.0,
    constant c: CGFloat = 0.0) -> Self {
      self.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: m, constant: c)
      return self
  }
  
  func activateConstraint(constraint: NSLayoutConstraint!) {
    guard let constraint = constraint else { return }
    constraint.active = true
  }
}