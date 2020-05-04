//
//  XibCell.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 28.04.2020.
//  Copyright © 2020 Aleksei Kanatev. All rights reserved.
//

import UIKit

class XibCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var ourLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
