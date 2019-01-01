//
//  RegistrationPresenter.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol RegistrationPresenterProtocol: class {

}

final class RegistrationPresenter: ViperPresenter {
    weak var view: RegistrationViewProtocol!
    weak var interactor: RegistrationInteractorProtocol!
    weak var router: RegistrationRouterProtocol!
}

extension RegistrationPresenter: ViewLifeCycleProtocol {

}

extension RegistrationPresenter: RegistrationPresenterProtocol {

}
