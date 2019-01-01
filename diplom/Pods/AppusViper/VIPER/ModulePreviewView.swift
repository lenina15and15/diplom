//
//  ModulePreviewView.swift
//
//  Created by Alexey Kubas on 7/20/18.
//  Copyright © 2018 Appus Studio LP. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
public class ModulePreviewView: UIView {
    @IBInspectable var moduleName: String!
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.loadModuleView()
    }
    private func loadModuleView() {
        var bundle: Bundle?
        for ibBundle in Bundle.allBundles where ibBundle.bundlePath.contains(".app") {
            bundle = ibBundle
        }
        let contentView = UIKit.UIStoryboard.init(name: moduleName+"ViewController", bundle: bundle).instantiateInitialViewController()?.view
        contentView?.frame = bounds
        contentView?.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        if let aView = contentView {
            addSubview(aView)
        }
    }
}
