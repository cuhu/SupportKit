//
//  BugIssue.swift
//  SupportKit
//
//  Created by Nathan on 22/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import Foundation

public struct BugIssue: SupportIssue {
  public let title = "Report a bug"
  public let subject = "I would like to report a bug"
  public let body = "Sorry that you’re having an issue with your app.\nPlease complete the required information below to help report the bug:\n\n- Date of Issue seen\n- Device Issue was seen on (including model + operating system [e.g. iOS 10…])\n- Steps to reproduce (if requires specific actions)\n\nThank you for letting us know!"
  
  public init() {}
}
