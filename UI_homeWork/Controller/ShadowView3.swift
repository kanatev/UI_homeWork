//
//  ShadowView3.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 24.04.2020.
//  Copyright © 2020 Aleksei Kanatev. All rights reserved.
//

import UIKit

@IBDesignable class ShadowView3: UIView {
    
    var shadowLayer: CAShapeLayer!
    var imageView = UIImageView()
    var borderView = UIView()
    
    @IBInspectable var viewBackgroundColor: UIColor = .clear {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var image1: UIImage? {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 1 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 22 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowColor: UIColor = .black {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize.zero {
        //    @IBInspectable var shadowOffset: CGSize{
        didSet {
            setNeedsDisplay()
        }
    }
    
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: bounds.height / 2).cgPath
            shadowLayer.fillColor = viewBackgroundColor.cgColor
            
            shadowLayer.shadowColor = shadowColor.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = shadowOffset
            shadowLayer.shadowOpacity = shadowOpacity
            shadowLayer.shadowRadius = shadowRadius
            
            layer.addSublayer(shadowLayer)
        }
        
        borderView.frame = CGRect.init(x: 5, y: 5, width: 80, height: 80)
        borderView.layer.cornerRadius = borderView.frame.height/2
        borderView.layer.borderColor = UIColor.lightGray.cgColor
        borderView.layer.borderWidth = 1
        borderView.layer.masksToBounds = true
        self.addSubview(borderView)
        
        imageView.frame = CGRect.init(x: 0, y: 0, width: 80, height: 80)
        imageView.backgroundColor = .red
        imageView.image = image1
        borderView.addSubview(imageView)

    }
    
}
