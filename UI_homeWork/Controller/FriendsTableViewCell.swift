//
//  FriendsTableViewCell.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 13/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    @IBOutlet var firstImageView: UIImageView!
    
    @IBOutlet var friendNameLabel: UILabel!
    let photoView = UIImageView()

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        firstImageView.layer.masksToBounds = false
        firstImageView.layer.shadowColor = UIColor.black.cgColor
        firstImageView.layer.shadowOffset = CGSize.init(width: 5, height: 5)
        firstImageView.layer.shadowOpacity = 0.5
        firstImageView.layer.shadowRadius = 3
        
        let borderView = UIView()
        borderView.frame = CGRect.init(x: 10, y: 10, width: 80, height: 80)
        borderView.layer.cornerRadius = borderView.frame.height/2
        borderView.layer.borderColor = UIColor.black.cgColor
        borderView.layer.borderWidth = 0.1
        //обрезаем по кругу
        borderView.layer.masksToBounds = true
        firstImageView.addSubview(borderView)
        
        photoView.frame = borderView.bounds
        borderView.addSubview(photoView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
