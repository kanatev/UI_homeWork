//
//  UserData.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 10/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import Foundation
import UIKit


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
    UserStruct(name: "Вика", avatar: UIImage(named: "Вика")),
    UserStruct(name: "Наташа", avatar: UIImage(named: "Наташа")),
    UserStruct(name: "Даша", avatar: UIImage(named: "Даша")),
    UserStruct(name: "Оля", avatar: UIImage(named: "Оля")),
    UserStruct(name: "Марина", avatar: UIImage(named: "Марина")),
    UserStruct(name: "Лера", avatar: UIImage(named: "Лера")),
    UserStruct(name: "Настя", avatar: UIImage(named: "Настя")),
    UserStruct(name: "Таня", avatar: UIImage(named: "Таня")),
    UserStruct(name: "Яна", avatar: UIImage(named: "Яна"))
]


var groupsArray: [GroupStruct] = [
    GroupStruct(groupName: "Arduino", groupAvatar: UIImage (named: "Arduino")),
    GroupStruct(groupName: "GeekBrains", groupAvatar: UIImage (named: "GeekBrains")),
    GroupStruct(groupName: "Apple", groupAvatar: UIImage (named: "Apple")),
    GroupStruct(groupName: "Goose", groupAvatar: UIImage (named: "Goose"))
]


let allGroupsArray: [GroupStruct] = [
    GroupStruct(groupName: "Science", groupAvatar: UIImage (named: "Science")),
    GroupStruct(groupName: "Steampunk", groupAvatar: UIImage (named: "Steampunk")),
    GroupStruct(groupName: "Travel", groupAvatar: UIImage (named: "Travel"))
]
