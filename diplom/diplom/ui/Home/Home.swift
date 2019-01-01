//
//  Home.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol HomeRouterProtocol: class {

}

class Home: ViperRouter<HomeViewController, HomePresenter, HomeInteractor> {

}

extension Home: HomeRouterProtocol {

}
