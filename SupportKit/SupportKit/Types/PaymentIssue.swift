//
//  PaymentIssue.swift
//  SupportKit
//
//  Created by Nathan on 22/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import Foundation

public struct PaymentIssue: SupportIssue {
  public let title = "I have an issue with payments"
  public let subject = "I'm having an issue with a payment"
  public let body = "Payment Issue information"

  public init() {}
}
