//
//  FriendsTableViewCell.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 13/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
//    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var teststststst: ProbaShadowView!
    @IBOutlet var friendNameLabel: UILabel!
   
    var photoView = UIImageView()
    var borderView = UIView()

    // выносим в сториборд настройку прозрачности тени
    @IBInspectable var opacityShad: Float {
        get {
            return self.layer.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
            setNeedsDisplay()
        }
    }
    
    // выносим в сториборд настройку ширины тени
    @IBInspectable var radiusShad: CGFloat {
        get {
            return self.layer.shadowRadius
        }
        set {
            self.layer.shadowRadius = CGFloat(newValue)
            setNeedsDisplay()
        }
    }
    
    // выносим в сториборд настройку цвета тени

        @IBInspectable var colorShad: UIColor? {
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
    @IBInspectable var offsetShad: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
            setNeedsDisplay()
        }
    }
    
    func cellConfigure() {
        firstImageView.layer.masksToBounds = false //позволяем тени выйти за пределы вью
        firstImageView.layer.shadowColor = colorShad?.cgColor
        firstImageView.layer.shadowOffset = offsetShad

        firstImageView.layer.shadowOpacity = opacityShad
        firstImageView.layer.shadowRadius = radiusShad

        borderView.frame = CGRect.init(x: 10, y: 10, width: 80, height: 80)
        borderView.layer.cornerRadius = borderView.frame.height/2
        borderView.layer.borderColor = UIColor.black.cgColor
        borderView.layer.borderWidth = 0.1
        borderView.layer.masksToBounds = true //обрезаем по кругу
        firstImageView.addSubview(borderView)

        photoView.frame = borderView.bounds
        borderView.addSubview(photoView)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellConfigure()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
}


