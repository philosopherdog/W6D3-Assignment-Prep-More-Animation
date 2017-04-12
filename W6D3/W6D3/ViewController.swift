//
//  ViewController.swift
//  W6D3
//
//  Created by steve on 2017-04-12.
//  Copyright © 2017 steve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var data: [Photo] = [] {
    didSet {
      // update the tableView
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    let theView = Bundle.main.loadNibNamed("TheView", owner: nil, options: nil)?.first as! TheView
    view = theView
    NotificationCenter.default.addObserver(self, selector: #selector(receivedNotification(notif:)), name:NSNotification.Name(rawValue: "PhotoObjectCreatedNotification") , object: nil)
    
    theView.block = {(_ photo: Photo) -> () in
      guard  let image = self.snapshot()  else {
        return
      }
      self.data.append(photo)
      self.createActivityViewController(with: [image])
    }
  }
  
  
  //MARK: Notification
  
  func receivedNotification(notif: Notification) {
    
    guard let photo = notif.userInfo?["key"] as? Photo, let image = snapshot() else {
      return
    }
    
    data.append(photo)
    createActivityViewController(with: [image])
  }
  
  private func createActivityViewController(with data:[Any]) {
    let activityViewController = UIActivityViewController(activityItems: data , applicationActivities: nil)
    present(activityViewController, animated: true, completion: nil)
  }
  
  
  
  private func snapshot() -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, true, 0)
    view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
  }


}

