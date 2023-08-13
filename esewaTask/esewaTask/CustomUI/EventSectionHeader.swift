//
//  EventSectionHeader.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 05/08/2023.
//

import UIKit

enum EventsType {
    case upcoming, featured, catagory, new, artist, venue
    
    var title: String {
        switch self {
        case .upcoming:
            return "Upcoming Events"
        case .featured:
            return "Featured Events"
        case .catagory:
            return "Browse By Categories"
        case .new:
            return "New Events"
        case .artist:
            return "Artists"
        case .venue:
            return "ExploreVenues"
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .upcoming:
            return nil
        case .featured:
            return UIImage(systemName: "flame")
        case .catagory:
            return nil
        case .new:
            return UIImage(systemName: "star.fill")
        case .artist:
            return UIImage(systemName: "mic.fill")
        case .venue:
            return UIImage(systemName: "location.circle")
        }
    }
    
    var viewAllIsAvailable: Bool {
        switch self {
        case .upcoming,
             .catagory,
             .venue:
            return false
        case .featured,
             .new,
             .artist:
            return true

        }
    }
}


class EventSectionHeader: UIView {
    
    let leadingStackView: UIStackView = {
        
        let leadingStackView = UIStackView()
        leadingStackView.translatesAutoresizingMaskIntoConstraints = false
        leadingStackView.axis = .horizontal
        leadingStackView.spacing = 5
        leadingStackView.distribution = .equalSpacing
        return leadingStackView
        
    }()
    
    let titleLabel: UILabel = {
        
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.attributedText = NSAttributedString(
            string: "Event",
            attributes: [
                .font: UIFont.systemFont(ofSize: 20, weight: .semibold),
                .foregroundColor: UIColor.appTextGray
            ]
        )
        return titleLabel
        
    }()
    
    let mainStackView: UIStackView = {
        let mainStackView = UIStackView()
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.axis = .horizontal
        mainStackView.distribution = .equalSpacing
        return mainStackView
    }()
    
    let icon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.tintColor = .appGreen
        return image
    }()
    
    let viewAllButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setAttributedTitle(
            NSAttributedString(
                string: "View All",
                attributes: [
                    .font: UIFont.systemFont(ofSize: 16, weight: .semibold),
                    .foregroundColor: UIColor.appTextGray
                ]),
            for: .normal)
        button.setImage(UIImage(systemName: "arrowshape.turn.up.right.fill"), for: .normal)
        button.imageView?.tintColor = .appTextGray
        button.semanticContentAttribute = .forceRightToLeft
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        leadingStackView.addArrangedSubview(icon)
        leadingStackView.addArrangedSubview(titleLabel)
        mainStackView.addArrangedSubview(leadingStackView)
        addSubview(mainStackView)
        NSLayoutConstraint.activate([
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    func setupViewWith(_ eventType: EventsType) {
        
        titleLabel.text = eventType.title
        
        if let iconImage = eventType.icon {
            icon.image = iconImage
        } else {
            icon.isHidden = true
        }
        
        if eventType.viewAllIsAvailable {
            mainStackView.addArrangedSubview(viewAllButton)
        } else {
            mainStackView.addArrangedSubview(UIView())
        }
        

    }
    
    
}
