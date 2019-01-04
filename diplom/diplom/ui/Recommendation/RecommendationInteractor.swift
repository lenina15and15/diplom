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

}

final class RecommendationInteractor: ViperInteractor {
    weak var presenter: RecommendationPresenterProtocol!
}

extension RecommendationInteractor: RecommendationInteractorProtocol {

}
