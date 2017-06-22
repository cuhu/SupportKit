//
//  PaymentIssue.swift
//  SupportKit
//
//  Created by Nathan on 22/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import Foundation

struct PaymentIssue: SupportIssue {
  var title: String
  var subject: String
  var body: String
  
  init(title: String, subject: String, body: String) {
    self.title = title
    self.subject = subject
    self.body = body
  }
}
