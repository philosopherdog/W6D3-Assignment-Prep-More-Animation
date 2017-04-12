import UIKit
import PlaygroundSupport

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 375.0))
containerView.backgroundColor = .white
PlaygroundPage.current.liveView = containerView


//1. Add a green circle to your container

//let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//
//greenView.backgroundColor = .green
//greenView.center = containerView.center
//greenView.layer.cornerRadius = greenView.frame.width/2
//containerView.addSubview(greenView)



//2. Basic Animation. Make a green cicle to a square.


//let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//greenView.backgroundColor = .green
//greenView.center = containerView.center
//greenView.layer.cornerRadius = greenView.frame.size.width/2
//containerView.addSubview(greenView)
//
//let cornerRadiusAnimation = CABasicAnimation(keyPath: "cornerRadius")
//cornerRadiusAnimation.fromValue = greenView.frame.size.width/2
//cornerRadiusAnimation.toValue = 0
//cornerRadiusAnimation.duration = 1.5
//cornerRadiusAnimation.repeatCount = Float.infinity
//
//greenView.layer.add(cornerRadiusAnimation, forKey: "greenViewCornerRadius")


//3. Keyframe Animation. Moving along path


//let greenView = UIView(frame: CGRect(x: 16, y: 239, width: 50, height: 50))
//greenView.backgroundColor = .green
//greenView.center = containerView.center
//containerView.addSubview(greenView)
//
//
//let path = UIBezierPath()
//
//path.move(to: CGPoint(x: 16,y: 239))
//
//path.addCurve(to: CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
//
//let pathAnimation = CAKeyframeAnimation(keyPath: "position")
//pathAnimation.path = path.cgPath
//pathAnimation.duration = 2
//pathAnimation.repeatCount = Float.infinity
//
//greenView.layer.add(pathAnimation, forKey: "move around in square")


// 4. Group Animation

//let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
//circle.center = containerView.center
//circle.layer.cornerRadius = 25.0
//circle.backgroundColor = .red
//containerView.addSubview(circle);
//
//let scaleUp = CABasicAnimation()
//scaleUp.keyPath = "transform.scale"
//scaleUp.fromValue = 1
//scaleUp.toValue = 5
//scaleUp.duration = 2
//
//let path = UIBezierPath()
//path.move(to: containerView.center)
//path.addLine(to: CGPoint(x: containerView.center.x, y: 0))
//path.close
//
//let position = CAKeyframeAnimation()
//position.keyPath = "position"
//position.path = path.cgPath
//position.duration = 2;
//
//let group = CAAnimationGroup()
//group.animations = [position, scaleUp]
//group.duration = 2
//group.beginTime = 0
//
//circle.layer.add(group, forKey: "moveCircle2")
//
//circle.transform = CGAffineTransform(scaleX: 5, y: 5)







