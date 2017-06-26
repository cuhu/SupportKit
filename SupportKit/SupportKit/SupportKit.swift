//
//  SupportKit.swift
//  SupportKit
//
//  Created by Nathan on 22/06/2017.
//  Copyright © 2017 Nathan Dane. All rights reserved.
//

import UIKit
import MessageUI

public class SupportKit: NSObject {
  
  // MARK: - Private members
  
  private let composer = MFMailComposeViewController()

  // MARK: - Public Members
  
  public var issues: [SupportIssue] = []
  public var contactAddress: String
  public let title: String
  public let message: String
  
  // MARK: - Lifecycle
  
  public init(contactAddress: String, title: String, message: String) {
    self.contactAddress = contactAddress
    self.title = title
    self.message = message
  }
  
  public init(contactAddress: String) {
    self.contactAddress = contactAddress
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
  
  public func add(_ issue: SupportIssue) {
    issues.append(issue)
  }
  
  public func add(_ issues: [SupportIssue]) {
    self.issues.append(contentsOf: issues)
  }
  
  // MARK: - Presentation
  
  public func present(_ from: UIViewController) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    
    for issue in issues {
      let action = UIAlertAction(title: issue.title,
                                 style: .default,
                                 handler: { action in
        self.composer.setToRecipients([self.contactAddress])
        self.composer.setSubject(issue.subject)
        self.composer.setMessageBody(issue.body, isHTML: false)
        self.composer.mailComposeDelegate = self
        from.present(self.composer, animated: true)
      })
        
      alertController.addAction(action)
    }
    
    alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
    from.present(alertController, animated: true)
  }
  
  @discardableResult
  public func present(_ issues: [SupportIssue]? = nil) -> Bool {
    // Try to determine where to present from
    guard let window = UIApplication.shared.keyWindow,
      let rootViewController = window.rootViewController else { return false }
    
    if let issues = issues {
      self.issues = issues
    }
    
    present(rootViewController)
    return true
  }
}

// MARK: - MFMailComposeViewControllerDelegate

extension SupportKit: MFMailComposeViewControllerDelegate {
  public func mailComposeController(_ controller: MFMailComposeViewController,
                                    didFinishWith result: MFMailComposeResult,
                                    error: Error?) {
    controller.dismiss(animated: true)
  }
}
