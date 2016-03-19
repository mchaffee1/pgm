//
//  File.swift
//  pgm
//
//  Created by Michael Chaffee on 3/19/16.
//  Copyright © 2016 Michael Chaffee. All rights reserved.
//

import Foundation

class Snooper {
  static let sharedInstance = Snooper()
  private init() { }
  
  var appLaunchedAt: NSDate? {
    didSet {
      NSLog("Launched at \(appLaunchedAt?.toISO8601())")
    }
  }
  var layoutCompletedAt: NSDate? {
    didSet {
      NSLog("Layout completed at \(layoutCompletedAt?.toISO8601())")
    }
  }
  
}