//
//  ViewController.swift
//  DropImage
//
//  Created by Courtney Osborne on 2/4/16.
//  Copyright © 2016 Courtney Osborne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var views: UIView!
    var animator = UIDynamicAnimator!()
       
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDrop()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func imageDrop() {
        
        let image = imageView.image
        imageView.image = image?.cropToImage(UIColor.blueColor(), lineWidth: 20)
        self.view.addSubview(imageView)
        self.view.addSubview(nameLabel)
        self.animator = UIDynamicAnimator(referenceView: self.view)
        gravity()
    }
    
    func gravity() {
        let gravity = UIGravityBehavior(items: [ self.imageView])
        gravity.gravityDirection = CGVectorMake(20, 20)
        self.animator.addBehavior(gravity)
//        bounce()
        snap()
    }
    
    func bounce() {
        let bounce = UICollisionBehavior(items: [self.imageView])
        self.animator.addBehavior(bounce)
    }
    func snap() {
        let snap = UISnapBehavior(item: self.imageView, snapToPoint: CGPoint(x: 152.50, y: 180))
        self.animator.addBehavior(snap)
    }
    
}

