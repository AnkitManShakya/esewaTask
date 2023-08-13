//
//  UpcomingEventsCollectionViewCell.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 07/08/2023.
//

import UIKit

class NewEventCollectionViewCell: UICollectionViewCell {
    
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
        return image
        
    }()
    
    let tradeView: UIView = { UIFactory.tradeView() }()
    let titleLabel: UILabel = { UIFactory.titleLabel(title: "Event Title") }()
    let dateLabel: UILabel = { UIFactory.appLabel(title: "22 - 23 Mar, Tue", color: .appGreen, weight: .regular, size: 10) }()
    
    let bottomView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
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
        bottomView.addSubview(tradeView)
        container.addSubview(bottomView)
        
        bottomView.addSubview(titleLabel)
        bottomView.addSubview(dateLabel)


        NSLayoutConstraint.activate([
            
            container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            
            bottomView.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: container.trailingAnchor),

            dateLabel.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -10),
            dateLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            
            titleLabel.bottomAnchor.constraint(equalTo: dateLabel.topAnchor, constant: -10),
            titleLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),

            tradeView.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -10),
            tradeView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            tradeView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 10),
            
            image.topAnchor.constraint(equalTo: container.topAnchor),
            image.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            image.bottomAnchor.constraint(equalTo: bottomView.topAnchor),

        ])
        
        
    }
    
}
