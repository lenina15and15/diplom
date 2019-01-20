//
//  RecommendationInteractor.swift
//  diplom
//
//  Created Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol RecommendationInteractorProtocol: class {
    var vacancies: Vacancies {get}
}

final class RecommendationInteractor: ViperInteractor {
    weak var presenter: RecommendationPresenterProtocol!
}

extension RecommendationInteractor: RecommendationInteractorProtocol {
    var vacancies: Vacancies {
        var newVacancies = Vacancies()
        for _ in 0...10 {
            let vacancy = Vacancy.init()
            newVacancies.append(vacancy)
        }
        return newVacancies
    }
}
