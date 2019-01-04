//
//  RecommendationViewController.swift
//  diplom
//
//  Created Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol RecommendationViewProtocol: class {

}

class RecommendationViewController: UIViewController, ViperView {
    weak var presenter: RecommendationPresenterProtocol!
}

extension RecommendationViewController: RecommendationViewProtocol {

}
