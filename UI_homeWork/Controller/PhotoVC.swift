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
          
        //        let transition = CATransition()
        //        transition.duration = 0.3
        //        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        //        transition.type = CATransitionType.push
        //        transition.subtype = CATransitionSubtype.fromRight
        //        self.view.window!.layer.add(transition, forKey: nil)
        //
        //        let newPosition: Int? = findImagePosition(currentImage: self.imageView.image!, arrayOfImages: photoArray)+1
        //        if newPosition! < photoArray.count {
        //            self.imageView.image = photoArray[newPosition!]
        //        } else {
        //            self.imageView.image = photoArray[0]
        //        }
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
        
        self.viewForPicture = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        self.view.addSubview(viewForPicture)
        self.viewForPicture.addSubview(self.imageView)
        
        //        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(heartTapped))
        //        likeControlOutlet.addGestureRecognizer(tapGestureRecognizer)
        
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
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
