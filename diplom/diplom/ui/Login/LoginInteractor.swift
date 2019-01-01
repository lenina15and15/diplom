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

}

final class LoginInteractor: ViperInteractor {
    weak var presenter: LoginPresenterProtocol!
}

extension LoginInteractor: LoginInteractorProtocol {

}
