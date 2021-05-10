//
//  UIView+ShimmerEffect.swift
//
//  Created by Sivabalaa Jothibose on 15/07/2020.
//  Copyright © 2020 iOSTree. All rights reserved.
//

import UIKit

extension UIView {
    
    //MARK:- shimmerEffectView
    func shimmerEffectView() {
        //Declaration
        let gradientBackground: CGColor = #colorLiteral(red: 0.8381932378, green: 0.8472757339, blue: 0.879475534, alpha: 1).cgColor
        let gradientBackgroundMove: CGColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        let shimmerStartLocation: [NSNumber] = [-1.0, -0.5, 0.0]
        let shimmerEndLocation: [NSNumber] = [1.0, 1.5, 2.0]
        var shimmerGradienLayer: CAGradientLayer!
        
        //CAGradientLayer
        let gradientLayered = CAGradientLayer()
        gradientLayered.frame = self.bounds
        gradientLayered.startPoint = CGPoint(x: 0, y: 1)
        gradientLayered.endPoint = CGPoint(x: 1, y: 1)
        gradientLayered.colors = [gradientBackground,
                                  gradientBackgroundMove,
                                  gradientBackground]
        gradientLayered.locations = shimmerStartLocation
        gradientLayered.name = "shimmerLayer"
        self.layer.addSublayer(gradientLayered)
        shimmerGradienLayer = gradientLayered
        
        //Start Animating
        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = shimmerStartLocation
        animation.toValue = shimmerEndLocation
        animation.duration = 0.8
        animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 1.8
        animationGroup.animations = [animation]
        animationGroup.repeatCount = .infinity
        shimmerGradienLayer?.add(animationGroup, forKey: animation.keyPath)
    }
    
    //MARK:- Stop Animate
    func shimmerStopAnimate() {
        if let layers = self.layer.sublayers {
            for layer in layers {
                if layer.name == "shimmerLayer" {
                    layer.removeFromSuperlayer()
                }
            }
        }
    }
}
