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
        
        cell.imageView.image = photoArray[indexPath.row]
        
        
        return cell
    }

    // MARK: UICollectionViewDelegate


}
