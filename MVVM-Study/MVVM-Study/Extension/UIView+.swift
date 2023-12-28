//
//  UIView+.swift
//  MVVM-Study
//
//  Created by 이조은 on 12/28/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
