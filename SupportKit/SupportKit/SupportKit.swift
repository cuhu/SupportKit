//
//  SupportKit.swift
//  SupportKit
//
//  Created by Nathan on 22/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import Foundation
import UIKit

public struct SupportKit {
  // MARK: - Types
  
  public typealias Callback = ((_ issue: SupportIssue) -> Void)
  
  // MARK: - Public Members
  
  public var issues: [SupportIssue] = []
  public let title: String
  public let message: String
  
  // MARK: - Lifecycle
  
  public init(title: String, message: String) {
    self.title = title
    self.message = message
  }
  
  public init() {
    self.title = "How can we help you?"
    
    if let appName = Bundle.main.infoDictionary?["CFBundleName"] as? String {
      self.message = "Your feedback is very important to us. " +
                    "If you have any question or issue with \(appName), drop us an email."
    } else {
      self.message = "Your feedback is very important to us. " +
                    "If you have any question or issue with this app, drop us an email."
    }
  }
  
  // MARK: - Issue management
  
  public mutating func add(_ issue: SupportIssue) {
    issues.append(issue)
  }
  
  public mutating func add(_ issues: [SupportIssue]) {
    self.issues.append(contentsOf: issues)
  }
  
  // MARK: - Presentation
  
  public func present(_ from: UIViewController, _ callback: Callback? = nil) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    
    for issue in issues {
      let action = UIAlertAction(title: issue.title,
                                 style: .default,
                                 handler: { action in
        callback?(issue)
      })
        
      alertController.addAction(action)
    }
    
    alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
    from.present(alertController, animated: true)
  }
  
  @discardableResult
  public func present(_ callback: Callback? = nil) -> Bool {
    // Try to determine where to present from
    guard let window = UIApplication.shared.keyWindow,
      let rootViewController = window.rootViewController else { return false }
    
    present(rootViewController, callback)
    return true
  }
}
