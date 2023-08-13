//
//  UpcomingEventsCollectionViewCell.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 07/08/2023.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    let image: UIImageView = {
        
        let image = UIImageView(image: UIImage(systemName: "desktopcomputer"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = .appGreen
        return image
        
    }()
    
    let title: UILabel = { UIFactory.appLabel(title: "Title", color: .appTextBlack, weight: .bold, size: 14) }()
    let eventsLabel: UILabel = { UIFactory.appLabel(title: "150 events", color: .appTextBlack, weight: .regular, size: 10) }()

    let container: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 12
        return view
        
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        contentView.addSubview(container)
        
        container.addSubview(image)
        container.addSubview(title)
        container.addSubview(eventsLabel)

        NSLayoutConstraint.activate([
            
            container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),

            image.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            image.topAnchor.constraint(equalTo: container.topAnchor, constant: 10),
            image.heightAnchor.constraint(equalToConstant: 30),
            
            title.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            title.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10),

            eventsLabel.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            eventsLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 3),
            eventsLabel.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -10),

        ])
        
        
    }
    
}
