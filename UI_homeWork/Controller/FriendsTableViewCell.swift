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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
