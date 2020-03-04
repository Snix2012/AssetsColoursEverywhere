//
//  UIColor+AssetColors.swift
//  AssetsColoursEverywhere
//
//  Created by Claire Roughan on 04/03/2020.
//  Copyright © 2020 Claire Roughan. All rights reserved.
//

import UIKit

extension UIColor {
    
    /**
      Enables colours from Assets to be used in both iOS 11 and pre-iOS 11 apps.
     */
    static func defaultColor(named name: String, default defaultColor: UIColor = .black) -> UIColor {
        if #available(iOS 11, *) {
            /// can use this for setting colour in iOS 11 or you can select colours from Assests directly in storyboard from the Named colours section
            return UIColor(named: name) ?? defaultColor
        }
        else {
            /// Use for setting colour in  pre-iOS 11 apps, but Named colors do not work prior to iOS 11.0 so can't set from storyboard
            return _defaultColors[name] ?? defaultColor
        }
    }
}
