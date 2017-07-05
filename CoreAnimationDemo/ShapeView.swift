//
//  ShapeView.swift
//  CoreAnimationDemo
//
//  Created by Sam Meech-Ward on 2017-07-05.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class ShapeView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    

    
    override class var layerClass: AnyClass {
        get {
            return CAShapeLayer.self
        }
    }
    
    var starPath5: UIBezierPath {
        get {
            let starPath = UIBezierPath()
            starPath.move(to: CGPoint(x: 171.5, y: 0))
            starPath.addLine(to: CGPoint(x: 231.98, y: 88.25))
            starPath.addLine(to: CGPoint(x: 334.61, y: 118.5))
            starPath.addLine(to: CGPoint(x: 269.36, y: 203.3))
            starPath.addLine(to: CGPoint(x: 272.31, y: 310.25))
            starPath.addLine(to: CGPoint(x: 171.5, y: 274.4))
            starPath.addLine(to: CGPoint(x: 70.69, y: 310.25))
            starPath.addLine(to: CGPoint(x: 73.64, y: 203.3))
            starPath.addLine(to: CGPoint(x: 8.39, y: 118.5))
            starPath.addLine(to: CGPoint(x: 111.02, y: 88.25))
            starPath.close()
            return starPath
        }
    }
    
    var starPath7: UIBezierPath {
        get {
            let starPath = UIBezierPath()
            starPath.move(to: CGPoint(x: 171.5, y: 0))
            starPath.addLine(to: CGPoint(x: 216.15, y: 78.79))
            starPath.addLine(to: CGPoint(x: 305.58, y: 64.57))
            starPath.addLine(to: CGPoint(x: 271.82, y: 148.6))
            starPath.addLine(to: CGPoint(x: 338.7, y: 209.66))
            starPath.addLine(to: CGPoint(x: 251.95, y: 235.66))
            starPath.addLine(to: CGPoint(x: 245.91, y: 326.02))
            starPath.addLine(to: CGPoint(x: 171.5, y: 274.4))
            starPath.addLine(to: CGPoint(x: 97.09, y: 326.02))
            starPath.addLine(to: CGPoint(x: 91.05, y: 235.66))
            starPath.addLine(to: CGPoint(x: 4.3, y: 209.66))
            starPath.addLine(to: CGPoint(x: 71.18, y: 148.6))
            starPath.addLine(to: CGPoint(x: 37.42, y: 64.57))
            starPath.addLine(to: CGPoint(x: 126.85, y: 78.79))
            starPath.close()
            return starPath
        }
    }
    
    func drawShape() {
        
        guard let layer = self.layer as? CAShapeLayer else {
            return
        }
        
        layer.path = starPath5.cgPath
        layer.fillColor = UIColor.yellow.cgColor
        layer.strokeColor = UIColor.magenta.cgColor
        layer.lineWidth = 10.0
    }

    
    func animateShape() {
        let animation = CABasicAnimation(keyPath: "path")
        
        animation.fromValue = starPath5.cgPath
        animation.toValue = starPath7.cgPath
        
        animation.isRemovedOnCompletion = false
        animation.fillMode = kCAFillModeBoth
        
        animation.duration = 3.0
        
        self.layer.add(animation, forKey: "change-star-sides-value")
    }
}
