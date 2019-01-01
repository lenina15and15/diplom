//
//  HomeViewController.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol HomeViewProtocol: class {

}

class HomeViewController: UIViewController, ViperView {
    weak var presenter: HomePresenterProtocol!
}

extension HomeViewController: HomeViewProtocol {

}
