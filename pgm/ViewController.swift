//
//  ViewController.swift
//  pgm
//
//  Created by Michael Chaffee on 3/19/16.
//  Copyright © 2016 Michael Chaffee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  
  @IBOutlet weak var fsd: UIButton!
  
  override func loadView() {
    super.loadView()
//    let label = UILabel(frame: CGRect(x: 20, y: 20, width: 80, height: 30))
    let label = UILabel()
    label.text = "Heyo"
    guard let view = self.view else { return }
    view.addChild(label)
    label.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
    label.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: 20.0).active = true
    
    let btn = view.addChild(UIButton())
      .withCenterXEqualToAnchor(view.centerXAnchor)
      .belowView(label)
    btn.setTitleColor(UIColor.blueColor(), forState: .Normal)
    btn.setTitle("Button", forState: .Normal)
    
//    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//    button.setTitleColor(UIColor.blueColor(), forState: .Normal)
//    button.setTitle("Button", forState: .Normal)
//    view.addChild(button)
//    button.topAnchor.constraintEqualToAnchor(label.bottomAnchor).active = true
//    button.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
  }
  
  @IBAction func buttonTouch(sender: AnyObject) {
    guard let view = self.view else { return }
    let label =
  }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}


