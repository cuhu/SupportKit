//
//  FeedbackIssue.swift
//  SupportKit
//
//  Created by Nathan on 22/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import Foundation

public struct FeedbackIssue: SupportIssue {
  public var title = "Leave feedback"
  public var subject: String
  public var body: String
  
  public init(subject: String, body: String) {
    self.subject = subject
    self.body = body
  }
}
