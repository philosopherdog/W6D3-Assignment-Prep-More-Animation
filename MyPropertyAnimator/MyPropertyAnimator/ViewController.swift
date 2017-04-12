//
//  ViewController.swift
//  MyPropertyAnimator
//
//  Created by steve on 2017-04-11.
//  Copyright © 2017 steve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var fish: UIView!
  
  var defaultCenter: CGPoint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(fishTapped(sender:)))
    fish.addGestureRecognizer(tapGesture)
  }
  
  override func viewDidLayoutSubviews() {
    let x = self.view.bounds.minX + self.fish.bounds.width/2
    let y = self.view.bounds.minY + self.fish.bounds.height/2
    defaultCenter = CGPoint(x: x, y: y)
    fish.center = defaultCenter
  }
  
  func fishTapped(sender: UITapGestureRecognizer) {
    animateFish()
  }
  
  var animator: UIViewPropertyAnimator!
  
  lazy var newCenter: CGPoint = { [unowned self] in
    let x = self.view.bounds.maxX - self.fish.bounds.width/2
    let y = self.view.bounds.maxY - self.fish.bounds.height/2
    return CGPoint(x: x, y: y)
    }()
  
  private func animateFish() {
    
    if self.animator == nil {
      animator = UIViewPropertyAnimator(duration: 10, curve: .easeInOut)
    }
    
    if animator.isRunning {
      // you can set or get the fraction complete!
      let fractionComplete = animator.fractionComplete
      print(#line, fractionComplete)
      animator.isReversed = true
      return
    }
    
    animator.addAnimations {[unowned self] in
      self.fish.center = self.fish.center == self.defaultCenter ? self.newCenter : self.defaultCenter
    }
    
    animator.addCompletion { (position: UIViewAnimatingPosition) in
      print(#line, #function, position.rawValue, self.fish.center, self.defaultCenter)
    }
    
    animator?.startAnimation()
  }
}

