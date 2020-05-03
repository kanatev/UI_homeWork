//
//  NewsCell.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 02.05.2020.
//  Copyright © 2020 Aleksei Kanatev. All rights reserved.
//

import UIKit

protocol NewsCellDelegate: class {
    func heartTapped(at indexPath: IndexPath)
}

class NewsCell: UITableViewCell {

    @IBOutlet weak var heartImageView: UIImageView!
    @IBOutlet weak var heartCounterLabel: UILabel!
    @IBOutlet weak var nameForNews: UILabel!
    @IBOutlet weak var textOfNews: UILabel!
    @IBOutlet weak var imageForNews: UIImageView!
    
//    public var heartState = false
    
    public var heartFilled = false {
        didSet {
            if !heartFilled {
                heartImageView.image = UIImage(systemName: "heart")
            } else {
                heartImageView.image = UIImage(systemName: "heart.fill")
            }
        }
    }
    
    public weak var delegate: NewsCellDelegate?
    public var heartPressed = {}
    public var cellIndexPath = IndexPath(item: 0, section: 0)
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        heartImageView.image = UIImage(systemName: "heart")
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(heartTapped))
        heartImageView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc private func heartTapped(){
        heartFilled.toggle()
        heartPressed()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        heartImageView.image = UIImage(systemName: "heart")
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
