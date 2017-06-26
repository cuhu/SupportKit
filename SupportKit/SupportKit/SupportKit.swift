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
  // MARK: - Types
  
  typealias Callback = ((_ issue: SupportIssue) -> Void)
  
  // MARK: - Private Members
  
  private var issues: [SupportIssue] = []
  
  // MARK: - Public Members
  
  public var title = "Support Requested"
  public var message = "Support Message"
  
  // MARK: - Issue management
  
  public mutating func add(_ issue: SupportIssue) {
    issues.append(issue)
  }
  
  public mutating func add(_ issues: [SupportIssue]) {
    self.issues.append(contentsOf: issues)
  }
  
  // MARK: - Presentation
  
  public func present(from: UIViewController, _ callback: Callback? = nil) {
    let alertController = UIAlertController(title: title,
                                            message: message,
                                            preferredStyle: .actionSheet)
    
    for issue in issues {
      let action = UIAlertAction(title: issue.title,
                                 style: .default,
                                 handler: { action in
        callback?(issue)
      })
        
      alertController.addAction(action)
    }
    
    from.present(alertController, animated: true)
  }
}
