//
//  UIImage.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 06/08/2023.
//

import UIKit

extension UIImage {
    private static func icon(for value: AppIcon) -> UIImage? {
        if let image = UIImage(named: value.rawValue) {
            return image
        } else {
            assertionFailure("image not found for \(value.rawValue)")
            return nil
        }
    }
    
    static let ad1 = icon(for: .ad1)
    static let card1 = icon(for: .card1)
    static let artist1 = icon(for: .artist1)
}

enum AppIcon: String {
    case ad1 = "Ad1"
    case card1 = "Card1"
    case artist1 = "Artist1"
}
