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
    var vacancies: Vacancies {get}
}

final class HomeInteractor: ViperInteractor {
    weak var presenter: HomePresenterProtocol!
}

extension HomeInteractor: HomeInteractorProtocol {
    var vacancies: Vacancies {
        let service = RealmService.init()
        if let vacancies = service.getAllVacancy()?.enumerated() {
            var newVacancies = Vacancies()
            for (_, vacancy) in vacancies {
                newVacancies.append(vacancy)
            }
            return newVacancies
        }
        return Vacancies()
    }

}
