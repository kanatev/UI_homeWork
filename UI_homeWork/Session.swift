//
//  Account.swift
//  UI_homeWork
//
//  Created by Aleksei Kanatev on 01.06.2020.
//  Copyright © 2020 Aleksei Kanatev. All rights reserved.
//

import Foundation

class Session {
    private init() {}
    public static let shared = Session()
    
    var token: String?
    var userId: Int?
}
