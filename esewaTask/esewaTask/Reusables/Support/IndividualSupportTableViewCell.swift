//
//  IndividualSupportTableViewCell.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 08/08/2023.
//

import UIKit

class IndividualSupportTableViewCell: UITableViewCell {
    
    let image: UIImageView = {
        
        let image = UIImageView(image: UIImage(systemName: "gear"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = .appTextGray
        return image
        
    }()
    
    let titleLabel: UILabel = { UIFactory.appLabel(title: "Title Label", color: .appTextGray, weight: .bold, size: 16) }()
    let descriptionLabel: UILabel = { UIFactory.appLabel(title: "description Label", color: .appTextGray, weight: .regular, size: 12) }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    private func setupUI() {
        backgroundColor = .clear
        selectionStyle = .none
        contentView.backgroundColor = .cellBackground

        contentView.addSubview(image)
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([

            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            image.heightAnchor.constraint(equalToConstant: 30),
            image.widthAnchor.constraint(equalToConstant: 30),

            titleLabel.topAnchor.constraint(equalTo: image.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)

        ])

    }
    
    
}
