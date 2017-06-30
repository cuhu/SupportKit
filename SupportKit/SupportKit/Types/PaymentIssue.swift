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
  public let body = "We’re sorry to hear you’re having an issue with payments within the app.\nPlease provide the following information to allow us to investigate and resolve the issue:\n\n- Date of issue seen\n- Device issue was seen on (including model + operating system [e.g iOS 10…])\n- Username\n- Type of payment being attempted (e.g. Apple Pay / Card payment …)\n- Error being seen or incorrect functionality witnessed\n\nThank you for taking the time to inform us of your issue and we apologise again for any inconvenience you may have experienced."

  public init() {}
}
