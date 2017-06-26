//
//  Issue.swift
//  SupportKit
//
//  Created by Nathan on 21/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import Foundation

public protocol SupportIssue {
  var title: String { get }
  var subject: String { get }
  var body: String { get }
  
  init()
}
