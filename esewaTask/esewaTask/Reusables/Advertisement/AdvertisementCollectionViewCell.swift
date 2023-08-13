//
//  AdvertisementCollectionViewCell.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 06/08/2023.
//

import UIKit

class AdvertisementCollectionViewCell: UICollectionViewCell {
    
    let image: UIImageView = {
        
        let image = UIImageView(image: UIImage.ad1)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 14
        image.clipsToBounds = true 
        return image
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(image)
        
        NSLayoutConstraint.activate([
        
            image.topAnchor.constraint(equalTo: contentView.topAnchor),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

        ])
        
        
    }
    
    
}
