//
//  Recommendation.swift
//  diplom
//
//  Created Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol RecommendationRouterProtocol: class {

}

class Recommendation: ViperRouter<RecommendationViewController, RecommendationPresenter, RecommendationInteractor> {

}

extension Recommendation: RecommendationRouterProtocol {

}
