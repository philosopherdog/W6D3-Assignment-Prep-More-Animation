//
//  DetailViewController.swift
//  QuotePro2
//
//  Created by steve on 2017-06-07.
//  Copyright © 2017 steve. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  var quoteView: QuoteView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loadQuoteView()
  }
  
  
  private func loadQuoteView() {
    quoteView = Bundle.main.loadNibNamed("QuoteView", owner: nil, options: nil)?.first as! QuoteView
    let image = UIImage(named: "cats.jpg", in: nil, compatibleWith: traitCollection)
    quoteView.imageView.image = image
    view = quoteView
    quoteView.imageButton.addTarget(self, action: #selector(imageTapped(_:) ), for: .touchUpInside)
  }
  
  func imageTapped(_ sender: UIButton) {
    guard let image = UIImage.snapshot(view: quoteView) else {
      return
    }
    
    let activityVC = UIActivityViewController(activityItems: [image], applicationActivities: nil)
    present(activityVC, animated: true, completion: nil)
  }
  
  
}



extension UIImage {
  static func snapshot(view: UIView) -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, true, 0)
    view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
  }
}
