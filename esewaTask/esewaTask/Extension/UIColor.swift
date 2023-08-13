//
//  UIColor.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 03/08/2023.
//

import UIKit

extension UIColor {
    private static func color(for value: AppColor) -> UIColor {
        if let color = UIColor(named: value.rawValue) {
            return color
        } else {
            assertionFailure("failed to find the color for \(value.rawValue)")
            return .systemGray
        }
    }
    
    static let appBackgroundGray = color(for: .appBackgroundGray)
    static let appGreen = color(for: .appGreen)
    static let appTextBlack = color(for: .appTextBlack)
    static let appTextGray = color(for: .appTextGray)
    static let appLightGreen = color(for: .appLightGreen)
    static let cellBackground = color(for: .cellBackground)

}


enum AppColor: String {
    
    case appBackgroundGray
    case appGreen
    case appTextBlack
    case appTextGray
    case appLightGreen
    case cellBackground

}
