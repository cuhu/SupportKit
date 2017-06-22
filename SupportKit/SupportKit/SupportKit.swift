//
//  SupportKit.swift
//  SupportKit
//
//  Created by Nathan on 22/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import Foundation
import UIKit

struct SupportKit {
  private var issues: [SupportIssue] = []
  public var title = "Support Requested"
  public var message = "Support Message"
  
  public mutating func add(_ issue: SupportIssue) {
    issues.append(issue)
  }
  
}
