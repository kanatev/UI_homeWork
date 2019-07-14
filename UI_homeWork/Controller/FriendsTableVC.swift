//
//  FriendsTableVC.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 03/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import UIKit

@IBDesignable class FriendsTableVC: UITableViewController {

    var friendsArray = UserStruct.createFriendsArray()

    @IBAction func exitButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToFriendCollectionVC" {
            let friendDestination: FriendCollectionVC = segue.destination as! FriendCollectionVC
            let friendSource = segue.source as! FriendsTableVC

            if let indexPath = friendSource.tableView.indexPathForSelectedRow {
                friendDestination.photoArray = friendsArray[indexPath.row].photoArray ?? [UIImage (named: "1no-img")!]
            }
        }
    }
    
    // Оставлю для новостной ленты
    //--------------------------------------------------------------------
    // refresh control
    //    var myRefreshControl: UIRefreshControl {
    //        let refControl = UIRefreshControl()
    //        refControl.addTarget(self, action: #selector(refresh(sender:)), for: .valueChanged)
    //        return refControl
    //    }
    
    // action для refresh control
    //    @objc private func refresh(sender: UIRefreshControl) {
    //        let str = "Новый друг номер: \(friendsArray.count)"
    //        friendsArray.append(str)
    //        self.tableView.reloadData()
    //        sender.endRefreshing()
    //    }
    //--------------------------------------------------------------------
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.refreshControl = myRefreshControl
        
        // задаем высоту ячейки
        self.tableView.rowHeight = 100
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendsTableViewCell
        
        cell.friendNameLabel.text = friendsArray[indexPath.row].name
        cell.photoView.image = friendsArray[indexPath.row].avatar ?? UIImage (named: "empty_photo")!
        
        return cell
    }

}


