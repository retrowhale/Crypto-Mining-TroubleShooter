//
//  Font.swift
//  Crypto Mining Trouble Shooter (UIKit)
//
//  Created by Deniz Donmezer on 2022-02-21.
//

import Foundation
import UIKit

enum adaptedFont {
    static func regular(size: CGFloat) -> UIFont {
        UIFont(name: "VWHead", size: size.adaptedFontSize)!
    }
    
    static func light(size: CGFloat) -> UIFont {
        UIFont(name: "VWHead-Light", size: size.adaptedFontSize)!
    }
    
    static func regularItalic(size: CGFloat) -> UIFont {
        UIFont(name: "VWHead-RegularItalic", size: size.adaptedFontSize)!
    }
    
    static func bold(size: CGFloat) -> UIFont {
        UIFont(name: "VWHead-Bold", size: size.adaptedFontSize)!
    }
    
    static func boldItalic(size: CGFloat) -> UIFont {
        UIFont(name: "VWHead-BoldItalic", size: size.adaptedFontSize)!
    }
}
