//
//  ViewController.swift
//  pgm
//
//  Created by Michael Chaffee on 3/19/16.
//  Copyright © 2016 Michael Chaffee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var btn: UIButton!
  
  var pings = 0
  let boxIndex = 2
  let otherBoxIndex = 7
  var drawingInBox = false
  var addedChildren: [UIView] = []
  weak var box: UIView!
  
  override func loadView() {
    super.loadView()
    let label = UILabel()
    label.text = "Heyo"
    guard let view = self.view else { return }
    view.addChild(label)
      .withCenterXEqualToAnchor(view.centerXAnchor)
      .withTopEqualToAnchor(view.topAnchor, constant: 20.0)
    
    self.btn = view.addChild(UIButton())
      .withCenterXEqualToAnchor(view.centerXAnchor)
      .belowView(label)
    btn.setTitleColor(UIColor.blueColor(), forState: .Normal)
    btn.setTitle("Button", forState: .Normal)
    btn.addTarget(self, action: "buttonTouch:", forControlEvents: .TouchUpInside)
    
    let gestureRecognizer = UISwipeGestureRecognizer(target: self, action: "userDidSwipe:")
    gestureRecognizer.direction = .Up
    view.addGestureRecognizer(gestureRecognizer)
  }
  
  @IBAction func userDidSwipe(sender: AnyObject) {
    popChildView()
  }
  
  @IBAction func buttonTouch(sender: AnyObject) {
    guard let view = box ?? self.view,
      let topNeighbor = addedChildren.last ?? self.btn else { return }
    let textColor = drawingInBox ? UIColor.whiteColor() : UIColor.blackColor()
    switch pings {
    case boxIndex:
      box = view.addChild(UIView())
        .withWidthEqualToView(view)
        .belowView(topNeighbor)
        .withBottomEqualToAnchor(view.bottomAnchor)
      box.backgroundColor = UIColor.purpleColor()
      box.tag = pings
      drawingInBox = true
    case otherBoxIndex:
      for constraint in box.constraints {
        if constraint.firstAttribute == .Bottom {
          box.removeConstraint(constraint)
          view.activateConstraint(box.bottomAnchor.constraintEqualToAnchor(topNeighbor.bottomAnchor))
        }
      }
      drawingInBox = false
    default:
      let label = view.addChild(UILabel())
        .withCenterXEqualToAnchor(view.centerXAnchor)
        .belowView(topNeighbor)
      label.text = "Ping! \(pings)"
      label.textColor = textColor
      label.tag = pings
      addedChildren.append(label)
    }
    pings += 1
  }
  
  func popChildView() {
    if addedChildren.count == boxIndex + 1 && box != nil {
      box.removeFromSuperview()
      drawingInBox = false
    }
    else if let child = addedChildren.popLast() {
      child.removeFromSuperview()
    }
  }
  
  func clearChildren() {
    for child in addedChildren {
      child.removeFromSuperview()
    }
  }
}


