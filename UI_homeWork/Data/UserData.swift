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

let photoSetVika: [UIImage] = [UIImage (named: "cat1")!,
                                UIImage (named: "cat2")!,
                                UIImage (named: "cat3")!,
                                UIImage (named: "cat4")!,
                                UIImage (named: "cat5")!]

let photoSetNatasha: [UIImage] = [UIImage (named: "fish1")!,
                               UIImage (named: "fish2")!,
                               UIImage (named: "fish3")!,
                               UIImage (named: "fish4")!,
                               UIImage (named: "fish5")!,
                               UIImage (named: "fish6")!]

let photoSetDasha: [UIImage] = [UIImage (named: "hamster1")!,
                                  UIImage (named: "hamster2")!,
                                  UIImage (named: "hamster3")!,
                                  UIImage (named: "hamster4")!,
                                  UIImage (named: "hamster5")!]

let photoSetOlya: [UIImage] = [UIImage (named: "parrot1")!,
                                  UIImage (named: "parrot2")!,
                                  UIImage (named: "parrot3")!,
                                  UIImage (named: "parrot4")!,
                                  UIImage (named: "parrot5")!,
                                  UIImage (named: "parrot6")!]

let photoSetMarina: [UIImage] = [UIImage (named: "chinchilla1")!,
                                UIImage (named: "chinchilla2")!,
                                UIImage (named: "chinchilla3")!,
                                UIImage (named: "chinchilla4")!,
                                UIImage (named: "chinchilla5")!,
                                UIImage (named: "chinchilla6")!,
                                UIImage (named: "chinchilla7")!]

let photoSetLera: [UIImage] = [UIImage (named: "rabbit1")!,
                               UIImage (named: "rabbit2")!,
                               UIImage (named: "rabbit3")!,
                               UIImage (named: "rabbit4")!,
                               UIImage (named: "rabbit5")!,
                               UIImage (named: "rabbit6")!]

let photoSetNastya: [UIImage] = [UIImage (named: "turtle1")!,
                                UIImage (named: "turtle2")!,
                                UIImage (named: "turtle3")!,
                                UIImage (named: "turtle4")!,
                                UIImage (named: "turtle5")!,
                                UIImage (named: "turtle6")!,
                                UIImage (named: "turtle7")!,
                                UIImage (named: "turtle8")!]

let photoSetTanya: [UIImage] = [UIImage (named: "seahorse1")!,
                               UIImage (named: "seahorse2")!,
                               UIImage (named: "seahorse3")!,
                               UIImage (named: "seahorse4")!,
                               UIImage (named: "seahorse5")!,
                               UIImage (named: "seahorse6")!]

let photoSetJana: [UIImage] = [UIImage (named: "dolphin1")!,
                                 UIImage (named: "dolphin2")!,
                                 UIImage (named: "dolphin3")!,
                                 UIImage (named: "dolphin4")!,
                                 UIImage (named: "dolphin5")!,
                                 UIImage (named: "dolphin6")!,
                                 UIImage (named: "dolphin7")!,
                                 UIImage (named: "dolphin8")!]


var friendsArray: [UserStruct] = [
    UserStruct(name: "Женя", avatar: UIImage(named: "Женя"), photoArray: photoSetJenya),
    UserStruct(name: "Маша", avatar: UIImage(named: "Маша"), photoArray: photoSetMasha),
    UserStruct(name: "Вика", avatar: UIImage(named: "Вика"), photoArray: photoSetVika),
    UserStruct(name: "Наташа", avatar: UIImage(named: "Наташа"), photoArray: photoSetNatasha),
    UserStruct(name: "Даша", avatar: UIImage(named: "Даша"), photoArray: photoSetDasha),
    UserStruct(name: "Оля", avatar: UIImage(named: "Оля"), photoArray: photoSetOlya),
    UserStruct(name: "Марина", avatar: UIImage(named: "Марина"), photoArray: photoSetMarina),
    UserStruct(name: "Лера", avatar: UIImage(named: "Лера"), photoArray: photoSetLera),
    UserStruct(name: "Настя", avatar: UIImage(named: "Настя"), photoArray: photoSetNastya),
    UserStruct(name: "Таня", avatar: UIImage(named: "Таня"), photoArray: photoSetTanya),
    UserStruct(name: "Яна", avatar: UIImage(named: "Яна"), photoArray: photoSetJana)
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
