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
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewWillLayoutSubviews() {
        
    }
    ///     let numbers = [10, 20, 30, 40, 50]
    ///     if let i = numbers.index(numbers.startIndex,
    ///                              offsetBy: 4,
    ///                              limitedBy: numbers.endIndex) {
    ///         print(numbers[i])
    ///     }
    ///     // Prints "50"
    ///
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
        //        self.dismiss(animated: true, completion: nil)
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
    
    @objc func nextPhotoGesture(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window!.layer.add(transition, forKey: nil)
        
        let newPosition: Int? = findImagePosition(currentImage: self.imageView.image!, arrayOfImages: photoArray)+1
        if newPosition! < photoArray.count {
            self.imageView.image = photoArray[newPosition!]
        } else {
            self.imageView.image = photoArray[0]
        }
    }
    
    @objc func previousPhotoGesture(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window!.layer.add(transition, forKey: nil)
        
        let newPosition: Int? = findImagePosition(currentImage: self.imageView.image!, arrayOfImages: photoArray)-1
        if newPosition! >= 0 {
            self.imageView.image = photoArray[newPosition!]
        } else {
            self.imageView.image = photoArray.last
        }
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
