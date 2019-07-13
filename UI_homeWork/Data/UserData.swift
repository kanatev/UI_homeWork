//
//  UserData.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 10/07/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

import Foundation
import UIKit


var sample = ["Женя", "Маша", "Лиза", "Вика", "Наташа", "Даша", "Оля", "Марина", "Лера", "Настя", "Таня", "Яна"]

let photoSetJenya: [UIImage] = [UIImage (named: "dog1")!,
                                UIImage (named: "dog2")!,
                                UIImage (named: "dog3")!,
                                UIImage (named: "dog4")!,
                                UIImage (named: "dog5")!,
                                UIImage (named: "dog6")!,
                                UIImage (named: "dog7")!,
                                UIImage (named: "dog8")!]

let photoSetMasha: [UIImage] = [UIImage (named: "racoon1")!,
                                UIImage (named: "racoon2")!,
                                UIImage (named: "racoon3")!,
                                UIImage (named: "racoon4")!,
                                UIImage (named: "racoon5")!,
                                UIImage (named: "racoon6")!,
                                UIImage (named: "racoon7")!,
                                UIImage (named: "racoon8")!,
                                UIImage (named: "racoon9")!]


var friendsArray: [UserStruct] = [
    UserStruct(name: "Женя", avatar: UIImage(named: "Женя"), photoArray: photoSetJenya),
    UserStruct(name: "Маша", avatar: UIImage(named: "Маша"), photoArray: photoSetMasha)
]




