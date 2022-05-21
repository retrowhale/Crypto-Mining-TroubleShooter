//
//  CGFloatExtension.swift
//  Crypto Mining Trouble Shooter (UIKit)
//
//  Created by Deniz Donmezer on 2022-02-21.
//

import Foundation
import UIKit

extension CGFloat {
    var adaptedFontSize: CGFloat {
        adapted(dimensionSize: self, to: .height)
    }
}
