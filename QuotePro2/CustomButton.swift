//
//  CustomButton.swift
//  QuotePro2
//
//  Created by steve on 2017-06-07.
//  Copyright © 2017 steve. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {
  
  @IBInspectable var borderWidth: CGFloat = 0.0 {
    didSet {
      self.layer.borderWidth = borderWidth
    }
  }
  
  @IBInspectable var borderColor: UIColor = UIColor.clear {
    didSet {
      self.layer.borderColor = borderColor.cgColor
    }
  }
  
  @IBInspectable var cornerRadius: CGFloat = 0.0 {
    didSet {
      self.layer.cornerRadius = cornerRadius
    }
  }
  
    
}
