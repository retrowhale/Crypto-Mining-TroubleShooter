//
//  UIViewExtensionConstraint.swift
//  Crypto Mining Trouble Shooter (UIKit)
//
//  Created by Deniz Donmezer on 2022-02-21.
//

import Foundation
import UIKit

extension UIView {
    func updateAdaptedConstraints() {
        let adaptedConstraints = constraints.filter { (constraint) -> Bool in
            return constraint is AdaptedConstraint
        } as! [AdaptedConstraint]
        
        for constraint in adaptedConstraints {
            constraint.resetConstant()
            constraint.awakeFromNib()
        }
    }
}
