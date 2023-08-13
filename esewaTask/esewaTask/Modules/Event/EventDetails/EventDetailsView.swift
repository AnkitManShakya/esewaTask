//
//  EventDetailsView.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 09/08/2023.
//

import UIKit

class EventDetailsView: UIView {
    
    let eventImage: UIImageView = {
        
        let image = UIImageView(image: .card1)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
        
    }()
    
    let backButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .white.withAlphaComponent(0.1)
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.imageView?.tintColor = .appTextBlack
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 8
        return button
        
    }()
    
    let scrollView: UIScrollView = {
        
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
        
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bottomView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
        
    }()
    
    let bottomSheetButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.up"), for: .normal)
        button.imageView?.tintColor = .white
        button.backgroundColor = .appGreen
        button.layer.cornerRadius = 25
        return button
        
    }()
    
    let likeButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.imageView?.tintColor = .white
        button.backgroundColor = .appGreen
        button.layer.cornerRadius = 25
        return button
        
    }()
    
    let totalAmountTitleLabel: UILabel = { UIFactory.appLabel(title: "Total paying amount", color: .appTextGray, weight: .semibold, size: 12) }()
    
    let totalAmountLabel: UILabel = { UIFactory.appLabel(title: "Rs. 00.00", color: .appTextBlack, weight: .semibold, size: 16) }()
    
    let buyTicketsButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .appGreen
        button.setTitle("BUY TICKETS", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.layer.cornerRadius = 8
        return button
        
    }()

    let innerView: UIView = {

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
    
    private func setupBottomView() {
        
        addSubview(bottomView)
        
        bottomView.addSubview(bottomSheetButton)
        bottomView.addSubview(totalAmountTitleLabel)
        bottomView.addSubview(totalAmountLabel)
        bottomView.addSubview(buyTicketsButton)

        NSLayoutConstraint.activate([
        
            bottomView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: trailingAnchor),

            bottomSheetButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor),
            bottomSheetButton.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: -25),
            bottomSheetButton.heightAnchor.constraint(equalToConstant: 50),
            bottomSheetButton.widthAnchor.constraint(equalToConstant: 50),
            
            totalAmountTitleLabel.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20),
            totalAmountTitleLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            
            totalAmountLabel.topAnchor.constraint(equalTo: totalAmountTitleLabel.bottomAnchor, constant: 10),
            totalAmountLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            totalAmountLabel.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -50),
            
            buyTicketsButton.topAnchor.constraint(equalTo: totalAmountTitleLabel.topAnchor),
            buyTicketsButton.bottomAnchor.constraint(equalTo: totalAmountLabel.bottomAnchor),
            buyTicketsButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10),
            buyTicketsButton.leadingAnchor.constraint(equalTo: bottomSheetButton.trailingAnchor,constant: 10),

        ])
    }
    
    func setupUI() {
        backgroundColor = .appBackgroundGray
        
        addSubview(scrollView)

        scrollView.addSubview(contentView)
        contentView.addSubview(eventImage)
        contentView.addSubview(innerView)
        innerView.addSubview(likeButton)

        addSubview(backButton)

        
        NSLayoutConstraint.activate([
            
          
            scrollView.centerXAnchor.constraint(equalTo: centerXAnchor),
            scrollView.widthAnchor.constraint(equalTo: widthAnchor),
            scrollView.topAnchor.constraint(equalTo: topAnchor, constant: -50),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            eventImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            eventImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            eventImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            eventImage.heightAnchor.constraint(equalToConstant: 300),
            
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            backButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            backButton.widthAnchor.constraint(equalToConstant: 40),
            
            innerView.topAnchor.constraint(equalTo: eventImage.bottomAnchor,constant: -10),
            innerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            innerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            innerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            
            
            likeButton.topAnchor.constraint(equalTo: innerView.topAnchor, constant: -10),
            likeButton.trailingAnchor.constraint(equalTo: innerView.trailingAnchor),
            likeButton.heightAnchor.constraint(equalToConstant: 50),
            likeButton.widthAnchor.constraint(equalToConstant: 50),

            
            eventImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -2000)
            
        ])
        setupBottomView()

    }
    
}
