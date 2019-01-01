//
//  Login.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol LoginRouterProtocol: class {
    func toRegistrationVC()
    func toHomeVC()
}

class Login: ViperRouter<LoginViewController, LoginPresenter, LoginInteractor> {

}

extension Login: LoginRouterProtocol {
    func toRegistrationVC() {
        performSegue(withIdentifier: "toRegistrationVC", sender: nil)
    }
    
    func toHomeVC() {
        performSegue(withIdentifier: "toHomeVC", sender: nil)
    }

    
}
