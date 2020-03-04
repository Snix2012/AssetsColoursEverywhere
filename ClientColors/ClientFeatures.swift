//
//  ClientFeatures.swift
//  AssetsColoursEverywhere
//
//  Created by Claire Roughan on 04/03/2020.
//  Copyright © 2020 Claire Roughan. All rights reserved.
//

import UIKit

struct FSBColor {
    var backgroundColor: UIColor
    var backgroundSelectedColor: UIColor
    var textColor: UIColor
    var textSelectedColor: UIColor
}

struct FSBAccountColor {
    var color = FSBColor(backgroundColor: UIColor.defaultColor(named: "mainThemeColor"), backgroundSelectedColor: .green, textColor: .black, textSelectedColor: .orange)
}

struct FSBHorseRacingColor {
    var color = FSBColor(backgroundColor: .purple, backgroundSelectedColor: .brown, textColor: .orange, textSelectedColor: .magenta)
}

struct FSBTheme {
    var account = FSBAccountColor()
    var horseRacing = FSBHorseRacingColor()
}

@objc class FSBColorSwift: NSObject {
    @objc static let shared = FSBColorSwift()
    let theme = FSBTheme()
}




/*
@objc enum TabNames: Int {
    case inPlay
    case football
    case horseRacing
    case betSlip
    
    var name: String {
        switch self {
        case .inPlay: return "In-Play"
        case .football: return "Football"
        case .horseRacing: return "Horse Racing"
        case .betSlip: return "Bet Slip"
        default: return ""
        }
    }
}

@objc class FSBScreenNamesForAnalytics: NSObject {
    
    /**
     *  Returns Screen name string for use in Mixpanel Analytics dashboard
     */
    @objc class func getScreenName(withName screenName: ScreenNames) -> String {
        return screenName.name
    }

    /**
     *  Returns Tab bar name string for use in Mixpanel Analytics dashboard
     */
    @objc class func getTabName(withName tabName: TabNames) -> String {
        return tabName.name
    }
}
*/
