//
//  BuzzableButton.swift
//  POPExample
//
//  Created by Nguyen Duy Khanh on 3/1/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit

protocol Buzzable {}


extension Buzzable where Self:UIView {
    func buzz() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(CGPoint: CGPoint(x: self.center.x - 5.0, y: self.center.y))
        animation.toValue = NSValue(CGPoint: CGPoint(x: self.center.x + 5.0, y: self.center.y))
        layer.addAnimation(animation, forKey: "position")
    }
}

protocol Poppable {
}

extension Poppable where Self:UIView {
    func pop() {
        UIView.animateWithDuration(0.3,
                       delay: 0,
                       options: .CurveEaseIn,
                       animations: { self.alpha = 1.0 }) { (animationCompleted) in
                        if animationCompleted == true {
                            UIView.animateWithDuration(0.3,
                                           delay: 2.0,
                                           options: .CurveEaseOut,
                                           animations: { self.alpha = 0.0 },
                                           completion: nil)
                }
        }
    }
}
