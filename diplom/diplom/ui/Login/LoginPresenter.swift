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
    func toRegistrationVC()
    func toHomeVC()
}

final class LoginPresenter: ViperPresenter {
    weak var view: LoginViewProtocol!
    weak var interactor: LoginInteractorProtocol!
    weak var router: LoginRouterProtocol!
}

extension LoginPresenter: ViewLifeCycleProtocol {
    
}

extension LoginPresenter: LoginPresenterProtocol {
    func toRegistrationVC() {
        self.router.toRegistrationVC()
    }
    
    func toHomeVC() {
        self.router.toHomeVC()
    }
    
}
