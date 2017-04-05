//
//  UINavigationBar+showsBorder.swift
//  UIControlExamples
//
//  Created by Watanabe Toshinori on 4/5/17.
//  Copyright © 2017 Watanabe Toshinori. All rights reserved.
//

import UIKit

extension UINavigationBar {

    var showsBorder: Bool {
        set {
            borderImageView?.isHidden = !newValue
        }
        get {
            return borderImageView?.isHidden ?? true
        }
    }

    fileprivate var borderImageView: UIImageView? {
        return self.subviews
            .flatMap { $0.subviews }
            .flatMap { $0 as? UIImageView }
            .filter { $0.bounds.size.width == bounds.size.width && $0.bounds.size.height <= 2 }
            .first
    }

}
