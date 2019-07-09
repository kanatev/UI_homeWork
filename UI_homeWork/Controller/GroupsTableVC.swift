//
//  GroupsTableVC.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 03/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import UIKit

class GroupsTableVC: UITableViewController {
    
    
    var groupsArray = ["Я Миллиардер", "Просто о бизнесе", "Техно клуб", "Думай и богатей", "Планета знаний", "Гений креатива", "Discovery", "Steampunk", "Cosplay", "pcGaming", "GeekBrains", "Apple"]

    
    @IBAction func exitButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBAction func addGroup(segue: UIStoryboardSegue) {
        guard let addGroups = segue.source as? AddGroupsTableVC,
        let indexPath = addGroups.tableView.indexPathForSelectedRow else {return}
        let newGroup = addGroups.addGroupsArray[indexPath.row]
        
        // проверяем нет ли уже такой группы
        guard !groupsArray.contains(where: {group -> Bool in
            group == newGroup
        }) else {return}
        groupsArray.append(newGroup)
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath)

        cell.textLabel?.text = groupsArray[indexPath.row]
        
        return cell
    }
 

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
//             Delete the row from the data source
            groupsArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


}

// убираем постоянное выделение ячейки
extension GroupsTableVC {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
