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
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    func setupUI() {
        self.loginButton.layer.cornerRadius = self.loginButton.frame.height/2
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        self.presenter.login(email: self.loginTextField.text, password: self.passwordTextField.text)
    }
    
}

extension LoginViewController: LoginViewProtocol {

}
