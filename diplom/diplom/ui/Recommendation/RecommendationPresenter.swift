//
//  RecommendationPresenter.swift
//  diplom
//
//  Created Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol RecommendationPresenterProtocol: class {

}

final class RecommendationPresenter: ViperPresenter {
    weak var view: RecommendationViewProtocol!
    weak var interactor: RecommendationInteractorProtocol!
    weak var router: RecommendationRouterProtocol!
}

extension RecommendationPresenter: ViewLifeCycleProtocol {

}

extension RecommendationPresenter: RecommendationPresenterProtocol {

}
