//
//  ResizeViewController.swift
//  ResizeViewController
//
//  Created by Bas Broek on 12/3/15.
//  Copyright © 2015 Bas Broek. All rights reserved.
//

import UIKit

protocol ResizeDelegate {
  func defaultSize()
  func plusSize()
  func minusSize()
}

class ResizeViewController: UIViewController {
  
  var delegate: ResizeDelegate?
}

// MARK: - Actions
extension ResizeViewController {
  
  @IBAction func defaultSize(sender: AnyObject) {
    delegate?.defaultSize()
  }
  
  @IBAction func plusSize(sender: AnyObject) {
    delegate?.plusSize()
  }
  
  @IBAction func minusSize(sender: AnyObject) {
    delegate?.minusSize()
  }
}