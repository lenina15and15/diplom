//
//  HomeInteractor.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol HomeInteractorProtocol: class {

}

final class HomeInteractor: ViperInteractor {
    weak var presenter: HomePresenterProtocol!
}

extension HomeInteractor: HomeInteractorProtocol {

}
