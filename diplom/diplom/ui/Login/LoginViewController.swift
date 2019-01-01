//
//  LoginViewController.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol LoginViewProtocol: class {

}

class LoginViewController: UIViewController, ViperView {
    weak var presenter: LoginPresenterProtocol!
}

extension LoginViewController: LoginViewProtocol {

}
