//
//  ExtendedNavigationBar.swift
//  UIControlExamples
//
//  Created by Watanabe Toshinori on 4/5/17.
//  Copyright © 2017 Watanabe Toshinori. All rights reserved.
//

import UIKit

class ExtendedNavigationBar: UIVisualEffectView {

    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)

        layer.shadowOffset = CGSize(width: 0, height: CGFloat(1) / UIScreen.main.scale)
        layer.shadowRadius = 0

        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        layer.shadowOpacity = 0.25
    }

}
