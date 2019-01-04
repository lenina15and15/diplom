//
//  File.swift
//  diplom
//
//  Created by Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import RealmSwift

class UserInfo: Object {
    @objc dynamic var email: String = ""
    @objc dynamic var password: String = ""
    @objc dynamic var firstName: String = ""
    @objc dynamic var lastName: String = ""
    var education = List <String>()
    var post = List <String>()
    
    override static func primaryKey() -> String? {
        return "email"
    }
}

extension RealmService {
    func getUser(email: String, password: String) -> Results<UserInfo>? {
        let result = self.realm?.objects(UserInfo.self).filter("email == email && password == password")
        if result?.count == 0 {
            self.createdUser(email: email, password: password)
            let result = self.realm?.objects(UserInfo.self).filter("email == email && password == password")
            return result
        } else {
            return result
        }
    }
    
    func createdUser(email: String, password: String) {
        do {
            try self.realm?.write {
                let model = UserInfo.init()
                model.email = email
                model.password = password
                self.realm?.create(UserInfo.self, value: model, update: true)
            }
        } catch let error {
           print(error)
        }
    }
    
    func updateUser(user: UserInfo) {
        do {
            try self.realm?.write {
                self.realm?.create(UserInfo.self, value: user, update: true)
            }
        } catch let error {
            print(error)
        }
    }
    
}
