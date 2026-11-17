//
//  Theme.swift
//  OskiEscape
//
//  Created by Krithin K on 11/16/26.
//

import SwiftUI

extension Color {
    // Berkeley colors
    static let oskiNavy = Color(red: 0 / 255, green: 50 / 255, blue: 98 / 255)          // #003262
    static let oskiGold = Color(red: 253 / 255, green: 181 / 255, blue: 21 / 255)       // #FDB515

    // Darker shades, used for the "pressed" bottom edge on buttons and for panels
    static let oskiGoldDark = Color(red: 196 / 255, green: 130 / 255, blue: 14 / 255)
    static let oskiNavyDark = Color(red: 0 / 255, green: 32 / 255, blue: 66 / 255)

    // Sewer pipe color used for the grid frame and small buttons
    static let pipe = Color(red: 58 / 255, green: 92 / 255, blue: 112 / 255)
    static let pipeDark = Color(red: 34 / 255, green: 60 / 255, blue: 78 / 255)

    // Grid cells
    static let stone = Color(red: 243 / 255, green: 238 / 255, blue: 226 / 255)        // empty cell
    static let safeGreen = Color(red: 139 / 255, green: 174 / 255, blue: 150 / 255)    // safe cell

    // Trap colors
    static let floodBlue = Color(red: 93 / 255, green: 156 / 255, blue: 214 / 255)
    static let gasOrange = Color(red: 232 / 255, green: 120 / 255, blue: 62 / 255)
    static let mudBrown = Color(red: 140 / 255, green: 98 / 255, blue: 62 / 255)

    /// The color that goes with each kind of trap.
//    static func color(for hazard: Hazard) -> Color {
//        switch hazard {
//        case .flood: return .floodBlue
//        case .gasLeak: return .gasOrange
//        case .mud: return .mudBrown
//        }
//    }
}
