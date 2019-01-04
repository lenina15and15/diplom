//
//  ProfilePresenter.swift
//  diplom
//
//  Created Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol ProfilePresenterProtocol: class {

}

final class ProfilePresenter: ViperPresenter {
    weak var view: ProfileViewProtocol!
    weak var interactor: ProfileInteractorProtocol!
    weak var router: ProfileRouterProtocol!
}

extension ProfilePresenter: ViewLifeCycleProtocol {

}

extension ProfilePresenter: ProfilePresenterProtocol {

}
