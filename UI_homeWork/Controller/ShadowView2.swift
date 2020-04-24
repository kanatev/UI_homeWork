//
//  ShadowImageView.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 24.04.2020.
//  Copyright © 2020 Aleksei Kanatev. All rights reserved.
//

import UIKit

@IBDesignable class ShadowView2: UIView {
    
    var shadowLayer: CAShapeLayer!
    
//    private var imageView: UIImageView!
//    var imageView = UIImageView()
    //    self.photo = UIImage (named: "empty_photo")
    
    //    required init?(coder aDecoder: (NSCoder?))  {
    //        super.init(coder: aDecoder!)
    //    }
    
    //    required init?(coder aDecoder: NSCoder)  {
    //        super.init(coder: aDecoder)
    //    }
    
    @IBInspectable var viewBackgroundColor: UIColor = .clear {
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
        
//        imageView.frame = self.shadowLayer.frame
//        imageView.image = UIImage(named: "empty_photo")
    }
}
