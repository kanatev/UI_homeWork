//
//  ShadowView.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 22/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class ProbaShadowView: UIImageView {
    
    var photoView2 = UIImageView()
    var borderView2 = UIView()
    
    // выносим в сториборд настройку прозрачности тени
    @IBInspectable var opacity1: Float {
        get {
            return self.layer.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
            setNeedsDisplay()
        }
    }
    
    // выносим в сториборд настройку ширины тени
    @IBInspectable var radius2: CGFloat {
        get {
            return self.layer.shadowRadius
        }
        set {
            self.layer.shadowRadius = CGFloat(newValue)
            setNeedsDisplay()
        }
    }
    
    // выносим в сториборд настройку цвета тени
    
    @IBInspectable var color1: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
                
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
                setNeedsDisplay()
            } else {
                layer.shadowColor = nil
                setNeedsDisplay()
            }
        }
    }
    
    // выносим в сториборд настройку сдвига тени
    @IBInspectable var offset1: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
            setNeedsDisplay()
        }
    }
    
        override func draw(_ rect: CGRect) {
            super.draw(rect)
    
//            self.layer.
            self.layer.masksToBounds = false //позволяем тени выйти за пределы вью
            self.layer.shadowColor = color1?.cgColor
//            self.layer.shadowColor = UIColor.red.cgColor
            self.layer.shadowOffset = offset1
            
            self.layer.shadowOpacity = opacity1
            self.layer.shadowRadius = radius2
            
            borderView2.frame = CGRect.init(x: 10, y: 10, width: 80, height: 80)
            borderView2.layer.cornerRadius = borderView2.frame.height/2
            borderView2.layer.borderColor = UIColor.black.cgColor
            borderView2.layer.borderWidth = 0.1
            borderView2.layer.masksToBounds = true //обрезаем по кругу
            self.addSubview(borderView2)
            
            photoView2.frame = borderView2.bounds
            borderView2.addSubview(photoView2)
    
    }
    
//    private var shadowLayer: CAShapeLayer!
//
//    @IBInspectable var viewBackgroundColor: UIColor = .black {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable var shadowOpacity: Float = 0.5 {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable var shadowRadius: CGFloat = 8 {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable var shadowColor: UIColor = UIColor.black {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable var shadowOffset: CGSize = CGSize.zero {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//
//    override func draw(_ rect: CGRect) {
//        super.draw(rect)
//
//        if shadowLayer == nil {
//            shadowLayer = CAShapeLayer()
//
//            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: bounds.height / 2).cgPath
//            shadowLayer.fillColor = viewBackgroundColor.cgColor
//
//            shadowLayer.shadowColor = shadowColor.cgColor
//            shadowLayer.shadowPath = shadowLayer.path
//            shadowLayer.shadowOffset = shadowOffset
//            shadowLayer.shadowOpacity = shadowOpacity
//            shadowLayer.shadowRadius = shadowRadius
//
//            layer.addSublayer(shadowLayer)
//        }
//    }
}
