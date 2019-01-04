//
//  ProfileInteractor.swift
//  diplom
//
//  Created Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol ProfileInteractorProtocol: class {

}

final class ProfileInteractor: ViperInteractor {
    weak var presenter: ProfilePresenterProtocol!
}

extension ProfileInteractor: ProfileInteractorProtocol {

}
