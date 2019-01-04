//
//  Tag.swift
//  diplom
//
//  Created by Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import RealmSwift

class Tag: Object, Codable {
    @objc dynamic var name: String = ""
    
    required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
    }
    
    override static func primaryKey() -> String? {
        return "name"
    }
    
    private enum CodingKeys: String, CodingKey {
        case name
    }
    
}
