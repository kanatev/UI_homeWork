//
//  UserData.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 10/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import Foundation
import UIKit

    

//var sample = ["Женя", "Маша", "Лиза", "Вика", "Наташа", "Даша", "Оля", "Марина", "Лера", "Настя", "Таня", "Яна"]

let photoSetJenya: [UIImage] = [UIImage (named: "dog1")!,
                                UIImage (named: "dog2")!,
                                UIImage (named: "dog3")!,
                                UIImage (named: "dog4")!,
                                UIImage (named: "dog5")!,
                                UIImage (named: "dog6")!,
                                UIImage (named: "dog7")!]

let photoSetMasha: [UIImage] = [UIImage (named: "racoon1")!,
                                UIImage (named: "racoon2")!,
                                UIImage (named: "racoon3")!,
                                UIImage (named: "racoon4")!,
                                UIImage (named: "racoon5")!,
                                UIImage (named: "racoon6")!,
                                UIImage (named: "racoon7")!,
                                UIImage (named: "racoon8")!]


var friendsArray: [UserStruct] = [
    UserStruct(name: "Женя", avatar: UIImage(named: "Женя"), photoArray: photoSetJenya),
    UserStruct(name: "Маша", avatar: UIImage(named: "Маша"), photoArray: photoSetMasha),
    UserStruct(name: "Лиза", avatar: UIImage(named: "Лиза"))
]




var groupsArray: [GroupStruct] = [
    GroupStruct(groupName: "Arduino", groupAvatar: UIImage (named: "Arduino")),
    GroupStruct(groupName: "GeekBrains", groupAvatar: UIImage (named: "GeekBrains")),
    GroupStruct(groupName: "Apple", groupAvatar: UIImage (named: "Apple")),
    GroupStruct(groupName: "Goose", groupAvatar: UIImage (named: "Goose"))
]



let AllGroupsArray: [GroupStruct] = [
    GroupStruct(groupName: "Science", groupAvatar: UIImage (named: "Science")),
    GroupStruct(groupName: "Steampunk", groupAvatar: UIImage (named: "Steampunk")),
    GroupStruct(groupName: "Travel", groupAvatar: UIImage (named: "Travel"))
]
