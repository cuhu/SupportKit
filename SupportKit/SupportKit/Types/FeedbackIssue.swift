//
//  FeedbackIssue.swift
//  SupportKit
//
//  Created by Nathan on 22/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import Foundation

public struct FeedbackIssue: SupportIssue {
  public let title = "Leave feedback"
  public let subject = "I would like to leave some feedback"
  public let body = "Feedback Report Body"

  public init() {}
}
