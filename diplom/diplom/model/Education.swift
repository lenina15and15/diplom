//
//  File.swift
//  diplom
//
//  Created by Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import RealmSwift

class Education: Object {
    @objc dynamic var education: String = ""
    var tag = List <String>()
    
    override static func primaryKey() -> String? {
        return "education"
    }
}

class Post: Object {
    @objc dynamic var post: String = ""
    var tag = List <String>()
    
    override static func primaryKey() -> String? {
        return "post"
    }
}
