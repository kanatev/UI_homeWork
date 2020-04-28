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
    var firstCharecters = [Character]()
    var sortedFriendsArray: [Character:[UserStruct]] = [:]

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
        
        // объединяем массивы в кортеж и приравниваем к результату sort
        (firstCharecters, sortedFriendsArray) = sort(friendsArray)
        
//        self.refreshControl = myRefreshControl
        self.modalPresentationStyle = .fullScreen
//        self.navigationController?.modalPresentationStyle = .fullScreen
        
        // задаем высоту ячейки
        self.tableView.rowHeight = 100
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return firstCharecters.count
//        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let character = firstCharecters[section]
        let friendsCount = sortedFriendsArray[character]?.count
        return friendsCount ?? 0
//        return friendsArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendsTableViewCell
        let character = firstCharecters[indexPath.section]
        if let friends = sortedFriendsArray[character]{
            cell.friendNameLabel.text = friends[indexPath.row].name
            cell.shadowView.image1 = friends[indexPath.row].avatar
            
            return cell
        }
//
//        cell.friendNameLabel.text = friendsArray[indexPath.row].name
//        cell.shadowView.image1 = friendsArray[indexPath.row].avatar ?? UIImage (named: "empty_photo")!
//
        return UITableViewCell()
//        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let character = firstCharecters[section]
        return String(character)
    }
    
//        override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//            tableView.dequeueReusableHeaderFooterView(withIdentifier: )
//        }
    
    
    // Func for sorting friends
    
    /// Функция сортировки друзей
    /// - Parameter friends: принимает массив друзей
    /// - Returns: возвращает кортеж
    private func sort(_ friends: [UserStruct]) -> (characters: [Character], sortedCharacters: [Character:[UserStruct]]) {
        
        var characters = [Character]()
        var sortedPeople = [Character: [UserStruct]]()
        
        friendsArray.forEach { friend in
            guard let character = friend.name.first else { return }
            if var thisCharFriends = sortedPeople[character] {
                thisCharFriends.append(friend)
                sortedPeople[character] = thisCharFriends
            } else {
                sortedPeople[character] = [friend]
                characters.append(character)
            }
        }
        
        characters.sort()
        
        return (characters, sortedPeople)
    }
    
}


