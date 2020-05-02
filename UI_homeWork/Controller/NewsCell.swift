//
//  NewsCell.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 02.05.2020.
//  Copyright © 2020 Aleksei Kanatev. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var nameForNews: UILabel!
    @IBOutlet weak var textOfNews: UILabel!
    @IBOutlet weak var imageForNews: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
