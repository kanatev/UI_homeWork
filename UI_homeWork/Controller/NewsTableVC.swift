//
//  NewsTableVC.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 02.05.2020.
//  Copyright © 2020 Aleksei Kanatev. All rights reserved.
//

import UIKit

class NewsTableVC: UITableViewController {

    private var selectedHearts = [IndexPath: Bool]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 250
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCell

        if let state = selectedHearts[indexPath] {
            cell.heartFilled = state
        }
        cell.heartPressed = {[weak self] in
            self?.selectedHearts[indexPath] = cell.heartFilled
        }
        cell.cellIndexPath = indexPath
        
        return cell
    }

}
