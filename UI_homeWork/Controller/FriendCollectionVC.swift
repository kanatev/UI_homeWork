//
//  FriendCollectionVC.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 03/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import UIKit

class FriendCollectionVC: UICollectionViewController {

    var photoArray: [UIImage] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendsCollectionCell", for: indexPath) as? FriendsCollectionViewCell else {fatalError("Ячейка не может быть переиспользована")}
        
        cell.imageView.image = photoArray[indexPath.item]
        
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let vc = PhotoVC()
//        picView.image = photoArray[indexPath.item]
//        vc.view.addSubview(picView)
//        vc.modalPresentationStyle = .fullScreen
//        vc.modalPresentationCapturesStatusBarAppearance = true
//        vc.setNeedsStatusBarAppearanceUpdate()
//        present(vc, animated: true, completion: nil)
        
        let vc = PhotoVC()
        vc.imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))

        vc.imageView?.image = photoArray[indexPath.item]
        vc.photoArray = photoArray
//        image = photoArray[indexPath.item]
//        vc.view.addSubview(picView)
        vc.modalPresentationStyle = .fullScreen
//        vc.modalPresentationCapturesStatusBarAppearance = true
        vc.setNeedsStatusBarAppearanceUpdate()
        present(vc, animated: true, completion: nil)
    }
}
