//
//  LoginInteractor.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol LoginInteractorProtocol: class {
    func login(email: String, password: String) -> UserInfo?
}

final class LoginInteractor: ViperInteractor {
    weak var presenter: LoginPresenterProtocol!
}

extension LoginInteractor: LoginInteractorProtocol {
    func login(email: String, password: String) -> UserInfo? {
        Session.createSession()
        let service = RealmService.init()
        guard let users = service.getUser(email: email, password: password)?.enumerated() else {
            return nil
        }
        for (_, user) in users {
            return user
        }
        return nil
    }
    
}
