//
//  AllGroupsTableVC.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 03/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import UIKit

class AllGroupsTableVC: UITableViewController {
    
    let allGroupsArray = GroupStruct.createAddGroupsArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // задаем высоту ячейки
        self.tableView.rowHeight = 80
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allGroupsArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //        guard let cell = tableView.dequeueReusableCell(withIdentifier: "XibCell", for: indexPath) as? XibCell else {preconditionFailure("XibCell doesn't work")}
        //
        //        cell.ourLabel?.text = allGroupsArray[indexPath.row].groupName
        //        cell.imgView?.image = allGroupsArray[indexPath.row].groupAvatar ?? UIImage (named: "empty_photo")!
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "addGroupCell", for: indexPath)
        
        cell.textLabel?.text = allGroupsArray[indexPath.row].groupName
        cell.imageView?.image = allGroupsArray[indexPath.row].groupAvatar ?? UIImage (named: "empty_photo")!
        
        
        // присваиваем группе фото
        cell.imageView?.image = UIImage(named: cell.textLabel!.text!)
        if cell.imageView?.image == nil {
            cell.imageView?.image = UIImage(named: "empty_photo")
        }
        
        //         настраиваем скругление фото
        cell.imageView?.layer.borderColor = UIColor.black.cgColor
        cell.imageView?.layer.borderWidth = 0.5
        cell.imageView?.layer.masksToBounds = false
        cell.imageView?.layer.cornerRadius = self.tableView.rowHeight/2
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Groups"
    }
}
