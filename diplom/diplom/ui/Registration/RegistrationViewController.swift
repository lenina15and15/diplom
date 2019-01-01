//
//  RegistrationViewController.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol RegistrationViewProtocol: class {

}

class RegistrationViewController: UIViewController, ViperView {
    weak var presenter: RegistrationPresenterProtocol!
}

extension RegistrationViewController: RegistrationViewProtocol {

}
