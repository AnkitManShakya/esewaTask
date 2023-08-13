//
//  UIFactory.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 05/08/2023.
//

import UIKit

class UIFactory {
    
    static func dateLabel(text: String, color: UIColor = .appTextGray) -> UILabel {
        appLabel(title: text, color: color, weight: .regular, size: 14)
    }
    
    static func titleLabel(title: String) -> UILabel {
        appLabel(title: title, color: .appTextBlack, weight: .bold, size: 16)
    }
    
    static func appLabel(title: String, color: UIColor, weight: UIFont.Weight, size: CGFloat) -> UILabel {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.attributedText = NSAttributedString(
            string: title,
            attributes: [
                .font: UIFont.systemFont(ofSize: size, weight: weight),
                .foregroundColor: color
            ]
        )
        return label
        
    }

    static func tradeView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .appGreen
        view.layer.cornerRadius = 8
        
        let label = appLabel(title: "TRADE", color: .white, weight: .regular, size: 12)
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
        
            label.topAnchor.constraint(equalTo: view.topAnchor,constant: 5),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 5),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -5),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -5),

        ])
        return view
    }
    
    
}
