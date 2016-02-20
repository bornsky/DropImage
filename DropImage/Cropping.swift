//
//  Cropping.swift
//  DropImage
//
//  Created by Courtney Osborne on 2/7/16.
//  Copyright © 2016 Courtney Osborne. All rights reserved.
//

import UIKit

extension UIImage {
    
    func crop (color: UIColor, lineWidth: CGFloat) -> UIImage {
        let imageRect = CGRect(origin: CGPointZero, size: self.size)
        
        UIGraphicsBeginImageContext(imageRect.size)
        let context = UIGraphicsGetCurrentContext()
        
        CGContextAddEllipseInRect(context, imageRect)
        CGContextClip(context)
        
        self.drawAtPoint(CGPointZero)
        CGContextAddEllipseInRect(context, imageRect)
        
        color.setStroke()
        CGContextSetLineWidth(context, lineWidth)
        CGContextStrokePath(context)
        
        return UIImage()
    }
}

