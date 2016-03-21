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
  weak var btn: UIButton!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override func layoutSubviews() {

    Snooper.sharedInstance.layoutCompletedAt = NSDate()
    
    
  }
}
