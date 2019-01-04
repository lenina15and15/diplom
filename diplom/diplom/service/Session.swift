//
//  Session.swift
//  diplom
//
//  Created by Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import RealmSwift

class Session {
    var realm: Realm
    var user: UserInfo
    
    static var current: Session? {
        return currentSession
    }
    private static var currentSession: Session?
    
    static func createSession() {
        currentSession = Session()
        
        let realmService = RealmService()
        realmService.setupVacancy()
    }
    
    static func closeCurrentSession() {
        currentSession = nil
    }
    
    private init() {
        self.user = UserInfo()
        // setup DB
        let config = Realm.Configuration()
        guard let realm = try? Realm(configuration: config) else {
            fatalError("Session cannot be created - Initialisation DB error")
        }
        self.realm = realm
    }
    
}
