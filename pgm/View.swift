//
//  View.swift
//  pgm
//
//  Created by Michael Chaffee on 3/19/16.
//  Copyright © 2016 Michael Chaffee. All rights reserved.
//

import UIKit

class View: UIView {
  let zero = CGFloat(0)
  let oneThird = CGFloat(0.333)
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override func layoutSubviews() {
//    let label = UILabel(frame: CGRect(x: 20, y: 20, width: 80, height: 30))
//    label.translatesAutoresizingMaskIntoConstraints = false
//    label.text = "Heyo"
//    self.addSubview(label)
//    label.centerXAnchor.constraintEqualToAnchor(self.centerXAnchor).active = true
//    label.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: 20.0).active = true
//    label.centerYAnchor.constraintEqualToAnchor(self.centerYAnchor).active = true
    
    Snooper.sharedInstance.layoutCompletedAt = NSDate()
  }
}
