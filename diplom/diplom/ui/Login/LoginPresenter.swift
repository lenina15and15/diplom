//
//  LoginPresenter.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol LoginPresenterProtocol: class {
    func toHomeVC()
    func login(email: String?, password: String?)
}

final class LoginPresenter: ViperPresenter {
    weak var view: LoginViewProtocol!
    weak var interactor: LoginInteractorProtocol!
    weak var router: LoginRouterProtocol!
}

extension LoginPresenter: ViewLifeCycleProtocol {
    
}

extension LoginPresenter: LoginPresenterProtocol {
    func toHomeVC() {
        self.router.toHomeVC()
    }
    
    func login(email: String?, password: String?) {
        if let email = email, let password = password {
            if let user = self.interactor.login(email: email, password: password) {
                Session.current?.user = user
                self.toHomeVC()
            }
        }
    }
    
}
