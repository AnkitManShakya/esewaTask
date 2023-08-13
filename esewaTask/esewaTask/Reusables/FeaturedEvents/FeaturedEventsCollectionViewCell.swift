//
//  UpcomingEventsCollectionViewCell.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 07/08/2023.
//

import UIKit

class FeaturedEventsCollectionViewCell: UICollectionViewCell {
    
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
    let locationLabel: UILabel = { UIFactory.appLabel(title: "Kathmandu, Newroad", color: .appTextGray, weight: .semibold, size: 12) }()
    
    let currencyLabel: UILabel = { UIFactory.appLabel(title: "Rs.", color: .appTextGray, weight: .regular, size: 12) }()
    let amountLabel: UILabel = { UIFactory.appLabel(title: "800", color: .appTextGray, weight: .regular, size: 16) }()

    let shareButton: UIButton = {
        
        let button = UIButton()
        let image = UIImage(systemName: "square.and.arrow.up")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(image, for: .normal)
        button.tintColor = .appTextGray
        button.imageView?.contentMode = .scaleAspectFill
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        return button
    }()
    
    let likeButton: UIButton = {
        
        let button = UIButton()
        let image = UIImage(systemName: "heart")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(image, for: .normal)
        button.tintColor = .appTextGray
        button.imageView?.contentMode = .scaleAspectFill
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        return button
    }()
    
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
        container.addSubview(tradeView)
        container.addSubview(bottomView)
        
        bottomView.addSubview(titleLabel)
        bottomView.addSubview(dateLabel)
        bottomView.addSubview(locationLabel)
        bottomView.addSubview(currencyLabel)
        bottomView.addSubview(amountLabel)
        bottomView.addSubview(likeButton)
        bottomView.addSubview(shareButton)

        NSLayoutConstraint.activate([
            
            container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            tradeView.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -15),
            tradeView.topAnchor.constraint(equalTo: container.topAnchor, constant: 15),
            
            bottomView.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10),
            
            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            dateLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            dateLabel.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10),

            locationLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10),
            locationLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            locationLabel.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10),
            
            currencyLabel.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -20),
            currencyLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            
            amountLabel.bottomAnchor.constraint(equalTo: currencyLabel.bottomAnchor),
            amountLabel.leadingAnchor.constraint(equalTo: currencyLabel.trailingAnchor, constant: 2),
            
            likeButton.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -20),
            likeButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10),
            likeButton.heightAnchor.constraint(equalToConstant: 25),
            likeButton.widthAnchor.constraint(equalToConstant: 25),

            shareButton.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -20),
            shareButton.trailingAnchor.constraint(equalTo: likeButton.leadingAnchor, constant: -10),
            shareButton.heightAnchor.constraint(equalToConstant: 25),
            shareButton.widthAnchor.constraint(equalToConstant: 25),

            image.topAnchor.constraint(equalTo: container.topAnchor),
            image.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            image.bottomAnchor.constraint(equalTo: bottomView.topAnchor),
            image.heightAnchor.constraint(equalToConstant: 175),


        ])
        
        
    }
    
}
