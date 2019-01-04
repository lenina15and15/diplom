//
//  ProfileViewController.swift
//  diplom
//
//  Created Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol ProfileViewProtocol: class {

}

class ProfileViewController: UIViewController, ViperView {
    weak var presenter: ProfilePresenterProtocol!
}

extension ProfileViewController: ProfileViewProtocol {

}
