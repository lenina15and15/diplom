//
//  BLEScannerCell.swift
//  swipe
//
//  Created by nikolai masenko on 1/14/19.
//  Copyright © 2019 nikolai masenko. All rights reserved.
//

import Foundation
import UIKit

class VacancyCell: UITableViewCell {
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var chevronImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bookmarkButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.addGestureRecognizer(UIGestureRecognizer.init(target: self, action: #selector(tap)))
    }
    
    @objc func tap() {
        
    }
    
    @IBAction func bookmarkAction(_ sender: UIButton) {
        
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        
    }
    
    func setup(model: Any?) {
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.setupUI()
    }

    private func setupUI() {
        self.shadowView.layer.shadowColor = UIColor.gray.cgColor
        self.shadowView.layer.shadowRadius = 8.0
        self.shadowView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.shadowView.layer.shadowOpacity = 1.0
        self.mainView.clipsToBounds = true
        self.mainView.layer.cornerRadius = 8.0
        
        let maskPath = UIBezierPath.init(roundedRect: self.mainImage.bounds,
                                         byRoundingCorners: [.topRight, .bottomLeft],
                                         cornerRadii: CGSize.init(width: 8.0, height: 8.0))
        let maskLayer = CAShapeLayer.init()
        maskLayer.frame = self.mainImage.bounds
        maskLayer.path = maskPath.cgPath
        self.mainImage.layer.mask = maskLayer
    }
    
}
