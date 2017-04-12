//
//  TheView.swift
//  W6D3
//
//  Created by steve on 2017-04-12.
//  Copyright © 2017 steve. All rights reserved.
//

import UIKit

class TheView: UIView {
  
  @IBOutlet weak var imageView: UIImageView!
  
  typealias Block = (Photo)->()
  
  var block: Block!
  
  //  @IBAction func buttonTapped() {
  //    let photo = Photo(with: imageView.image!)
  //    let userInfo = ["key": photo]
  //    NotificationCenter.default.post(name: NSNotification.Name(rawValue: "PhotoObjectCreatedNotification"), object: nil, userInfo: userInfo)
  //
  //  }
  
  @IBAction func buttonTapped() {
    let photo = Photo(with: imageView.image!)
//    let userInfo = ["key": photo]
    block(photo)
  }
  
  
}
