//
//  PhotoVC.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 10.05.2020.
//  Copyright © 2020 Aleksei Kanatev. All rights reserved.
//

import UIKit

class PhotoVC: UIViewController {
    var viewForPicture: UIView!
    var imageView: UIImageView!
    var photoArray: [UIImage]!
    var imageView2: UIImageView!
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewWillLayoutSubviews() {
        
    }
    
    func findImagePosition(currentImage: UIImage, arrayOfImages: [UIImage]) -> Int {
        var imagePosition: Int!
        
        for i in arrayOfImages.indices {
            let tempImage = arrayOfImages[i]
            if tempImage == currentImage {
                imagePosition = i
            }
        }
        return imagePosition
    }
    
    
    @objc func exitDownGesture(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromBottom
        self.view.window!.layer.add(transition, forKey: nil)
        self.dismiss(animated: false, completion: nil)
    }
    
    @objc func exitUpGesture(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromTop
        self.view.window!.layer.add(transition, forKey: nil)
        self.dismiss(animated: false, completion: nil)
    }
    
    // функция свайпа фото вперед
    @objc func nextPhotoGesture(){
        UIView.animateKeyframes(withDuration: 0.3, delay: 0, options: [.calculationModeCubicPaced], animations: {
            UIView.addKeyframe(withRelativeStartTime: 1, relativeDuration: 1) {
                self.imageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
            
        }, completion:  {_ in
            self.imageView.transform = CGAffineTransform(scaleX: 1, y: 1)
            
            let newPosition: Int? = self.findImagePosition(currentImage: self.imageView.image!, arrayOfImages: self.photoArray)+1
            if newPosition! < self.photoArray.count {
                self.imageView.image = self.photoArray[newPosition!]
            } else {
                self.imageView.image = self.photoArray[0]
            }
            
            let transition = CATransition()
            transition.duration = 0.5
            transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            transition.type = CATransitionType.push
            transition.subtype = CATransitionSubtype.fromRight
            self.view.window!.layer.add(transition, forKey: nil)
            
        })
    }
    
    // функция свайпа фото назад
    @objc func previousPhotoGesture(){
        
        let newPosition: Int? = self.findImagePosition(currentImage: self.imageView.image!, arrayOfImages: self.photoArray)-1
        if newPosition! >= 0 {
            self.imageView.image = self.photoArray[newPosition!]
        } else {
            self.imageView.image = self.photoArray.last
        }
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window!.layer.add(transition, forKey: nil)
        self.imageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        
        UIView.animateKeyframes(withDuration: 0.5, delay: 0.5, options: [.calculationModeCubicPaced], animations: {
            UIView.addKeyframe(withRelativeStartTime: 1, relativeDuration: 1) {
                self.imageView.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
        }, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newSize = getSizeForImage(heightOfView: super.view.frame.height, widthOfView: super.view.frame.width, width: self.imageView.image!.size.width, height: self.imageView.image!.size.height)
        
        self.imageView.frame.size = newSize
        self.imageView.frame.origin.y = (self.view.bounds.height/2-(newSize.height/2))
        
        
        
        self.viewForPicture = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        self.view.addSubview(viewForPicture)
        self.viewForPicture.addSubview(self.imageView)
        
        let swipeTopToBottom = UISwipeGestureRecognizer(target: self, action: #selector(exitDownGesture))
        swipeTopToBottom.direction = .down
        self.viewForPicture.addGestureRecognizer(swipeTopToBottom)
        
        let swipeBottomToTop = UISwipeGestureRecognizer(target: self, action: #selector(exitUpGesture))
        swipeBottomToTop.direction = .up
        self.viewForPicture.addGestureRecognizer(swipeBottomToTop)
        
        let swipeToNext = UISwipeGestureRecognizer(target: self, action: #selector(nextPhotoGesture))
        swipeToNext.direction = .left
        self.viewForPicture.addGestureRecognizer(swipeToNext)
        
        let swipeToPrevious = UISwipeGestureRecognizer(target: self, action: #selector(previousPhotoGesture))
        swipeToPrevious.direction = .right
        self.viewForPicture.addGestureRecognizer(swipeToPrevious)
    }
    
    func getSizeForImage(heightOfView: CGFloat, widthOfView: CGFloat, width: CGFloat, height: CGFloat) -> CGSize {
        var newWidth: CGFloat
        var newHeight: CGFloat
        var newSize: CGSize = CGSize(width: 100, height: 100)
        
        if heightOfView > widthOfView {
            let multiplierForHeight = height / width
            newWidth = widthOfView
            newHeight = multiplierForHeight * widthOfView
            newSize = CGSize(width: newWidth, height: newHeight)
        } else {
            
        }
        
        
//            let multiplierForWidth = width / height
//            var newWidth = multiplierForWidth * widthOfView
//            newWidth = 300
//
//            let multiplierForHeight = height / width
//            var newHeight = multiplierForHeight * heightOfView
//            newHeight = 200
//
//        let newSize: CGSize = CGSize(width: newWidth, height: newHeight)
        
        return newSize
//
//            let multiplierForWidth = width / height
//            var newWidth = multiplierForWidth * widthOfView
//            newWidth = 300
//            let multiplierForHeight = height / width
//            var newHeight = multiplierForHeight * heightOfView
//            newHeight = 200
//
//        let newSize: CGSize = CGSize(width: newWidth, height: newHeight)
//
//        return newSize
    }
    
}
