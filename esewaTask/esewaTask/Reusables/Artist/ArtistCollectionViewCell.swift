//
//  UpcomingEventsCollectionViewCell.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 07/08/2023.
//

import UIKit

class ArtistCollectionViewCell: UICollectionViewCell {
    
    let image: UIImageView = {
        
        let image = UIImageView(image: .artist1)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.tintColor = .appGreen
        image.layer.cornerRadius = 25
        image.clipsToBounds = true
        return image
        
    }()
    
    let title: UILabel = { UIFactory.appLabel(title: "Artist Title", color: .appTextGray, weight: .bold, size: 14) }()
    lazy var totalEventLabel: UILabel = { UIFactory.appLabel(title: "8", color: .appGreen, weight: .regular, size: 14) }()
    lazy var eventsLabel: UILabel = { UIFactory.appLabel(title: "events", color: .appTextBlack, weight: .regular, size: 12) }()
    
    lazy var eventStack: UIStackView = {
        
        let stackView = UIStackView(arrangedSubviews: [totalEventLabel, eventsLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.spacing = 5
        return stackView
        
    }()

    let container: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
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
        container.addSubview(eventStack)

        NSLayoutConstraint.activate([
            
            container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),

            eventStack.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            eventStack.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            
            title.bottomAnchor.constraint(equalTo: eventStack.topAnchor, constant: -5),
            title.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            
            image.topAnchor.constraint(equalTo: container.topAnchor),
            image.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            image.bottomAnchor.constraint(equalTo: title.topAnchor, constant: -10)
        ])
        
        
    }
    
}
