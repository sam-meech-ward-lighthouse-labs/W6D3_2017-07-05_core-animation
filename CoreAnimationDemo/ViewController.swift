//
//  ViewController.swift
//  CoreAnimationDemo
//
//  Created by Sam Meech-Ward on 2017-07-05.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: ShapeView!
    
    @IBOutlet weak var myView2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let layer = CALayer()
//        layer.frame = CGRect(x: 20, y: 20, width: 200, height: 100)
//        layer.backgroundColor = UIColor.red.cgColor
//        view.layer.addSublayer(layer)
//
//        view.layer.backgroundColor = UIColor.blue.cgColor
        
        
//        myView.layer.contents = UIImage(named: "sheet")?.cgImage
//        myView.layer.contentsRect = CGRect(x: 0.2, y: 0, width: 0.2, height: 0.5)
        
        
//        myView2.layer.cornerRadius = 50.0
//        myView2.layer.borderColor = UIColor.red.cgColor
//        myView2.layer.borderWidth = 10.0
//        
//        myView2.layer.shadowOffset = CGSize(width: 50.0, height: 50.0)
//        myView2.layer.shadowOpacity = 1.0
        
        myView.drawShape()
        
        acceptsAClosure { (string) in
            
            print(string)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func myAction(_ sender: Any) {
//        if myView2.layer.zPosition > myView.layer.zPosition {
//            myView2.layer.zPosition = myView.layer.zPosition - 1
//        } else {
//            myView2.layer.zPosition = myView.layer.zPosition + 1
//        }
        
//        myView.animateShape()
//        
//        UIView .animate(withDuration: 1.0) { 
//            let transform = CGAffineTransform(rotationAngle: CGFloat.pi)
//            
//            self.myView.transform = transform
//        }
        
        
        // This is my code from class that didn't work
        // You have to set the m34 before you do the transform
//        var trasform = CATransform3DMakeRotation(CGFloat.pi, 1, 1, 1)
//        
//        trasform.m34 = -1.0 / 500.0
//        
//        myView.layer.transform = trasform
        
        
        
        myView.layer.shadowOffset = CGSize(width: 10.0, height: 5.0)
        myView.layer.shadowOpacity = 1.0
        
        var trasform = CATransform3DIdentity
        
        trasform.m34 = -1.0 / 500.0
        
        trasform = CATransform3DRotate(trasform, CGFloat.pi, 1, 1, 1)
        
        myView.layer.transform = trasform
        
    }
    
    func acceptsAClosure(closure: (String) -> Void) {
        
        closure("Some Srings")
        
    }

}

