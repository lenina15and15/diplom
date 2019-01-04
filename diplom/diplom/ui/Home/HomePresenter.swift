//
//  HomePresenter.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol HomePresenterProtocol: class {
    var vacancies: Vacancies {get}
}

final class HomePresenter: ViperPresenter {
    weak var view: HomeViewProtocol!
    weak var interactor: HomeInteractorProtocol!
    weak var router: HomeRouterProtocol!
}

extension HomePresenter: ViewLifeCycleProtocol {

}

extension HomePresenter: HomePresenterProtocol {
    var vacancies: Vacancies {
        return self.interactor.vacancies
    }

}
