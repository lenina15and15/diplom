//
//  Profile.swift
//  diplom
//
//  Created Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol ProfileRouterProtocol: class {

}

class Profile: ViperRouter<ProfileViewController, ProfilePresenter, ProfileInteractor> {

}

extension Profile: ProfileRouterProtocol {

}
