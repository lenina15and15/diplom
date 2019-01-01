//
//  RegistrationInteractor.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol RegistrationInteractorProtocol: class {

}

final class RegistrationInteractor: ViperInteractor {
    weak var presenter: RegistrationPresenterProtocol!
}

extension RegistrationInteractor: RegistrationInteractorProtocol {

}
