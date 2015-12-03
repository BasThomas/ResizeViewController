//
//  ViewController.swift
//  ResizeViewController
//
//  Created by Bas Broek on 12/3/15.
//  Copyright © 2015 Bas Broek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var clickMeButton: UIBarButtonItem!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

// MARK: - Actions
extension ViewController {
  
  @IBAction func resize(sender: AnyObject) {
    let alert: UIAlertController = {
      let alert = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
      alert.addAction(UIAlertAction(title: "Done", style: .Cancel, handler: nil))
      
      let vc = ResizeViewController()
      vc.delegate = self
      alert.setValue(vc, forKey: "contentViewController")
      
      if let popover = alert.popoverPresentationController {
        popover.barButtonItem = clickMeButton
      }
      
      return alert
    }()
    
    presentViewController(alert, animated: true, completion: nil)
  }
}

// MARK: - ResizeDelegate
extension ViewController: ResizeDelegate {
  
  func defaultSize() {
    print(__FUNCTION__)
  }
  
  func plusSize() {
    print(__FUNCTION__)
  }
  
  func minusSize() {
    print(__FUNCTION__)
  }
}