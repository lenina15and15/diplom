//
//  RealmService.swift
//  diplom
//
//  Created by Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import RealmSwift

class RealmService {
    var realm: Realm? {
        return Session.current?.realm ?? (try? Realm())
    }
}

