//
//  UpcomingEventsCollectionViewCell.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 07/08/2023.
//

import UIKit

class VenueCollectionViewCell: UICollectionViewCell {
    
    let container: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 14
        view.clipsToBounds = true
        return view
        
    }()
    
    let image: UIImageView = {
        
        let image = UIImageView(image: .card1)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 14
        image.clipsToBounds = true 
        return image
        
    }()
    
    let titleLabel: UILabel = { UIFactory.titleLabel(title: "Title") }()
    let descriptionLabel: UILabel = { UIFactory.appLabel(title: "Thamel, Kathmandu", color: .appTextGray, weight: .regular, size: 14) }()
    
    let dateView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.backgroundColor = .appLightGreen
        
        let label = UIFactory.appLabel(title: "4.12", color: .appGreen, weight: .regular, size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
        
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5),

        ])
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
        container.addSubview(titleLabel)
        container.addSubview(descriptionLabel)
        container.addSubview(dateView)

        NSLayoutConstraint.activate([
            
            container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            descriptionLabel.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -10),
            descriptionLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            
            titleLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: -10),
            titleLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            
            image.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -10),
            image.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 10),
            image.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10),
            image.topAnchor.constraint(equalTo: container.topAnchor, constant: 10),
            
            dateView.topAnchor.constraint(equalTo: image.topAnchor, constant: 10),
            dateView.trailingAnchor.constraint(equalTo: image.trailingAnchor, constant: -10),

        ])
        
        
    }
    
}
