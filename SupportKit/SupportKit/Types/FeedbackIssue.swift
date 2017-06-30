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
  public let body = "Thank you for taking the time to leave us some feedback about our app.\nWe hope you’re enjoying your app experience but we appreciate all types of feedback both positive and negative.\nPlease leave your feedback below:"

  public init() {}
}
