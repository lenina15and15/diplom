//
//  File.swift
//  diplom
//
//  Created by Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import UIKit

class VacancyCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var priveLabel: UILabel!
    
    func setupCell(model: Vacancy?) {
        if let price = model?.price {
            self.priveLabel.text = String(price)
        } else {
            self.priveLabel.text = "None"
        }
        self.summaryLabel.text = model?.summary
        self.titleLabel.text = model?.title
    }
}
