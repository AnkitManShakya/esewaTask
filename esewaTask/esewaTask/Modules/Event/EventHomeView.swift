//
//  EventView.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 03/08/2023.
//

import UIKit

class EventHomeView: UIView {
    
    let topGreenBackground: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .appGreen
        view.layer.cornerRadius = 50
        return view
        
    }()
    
    let titleLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.attributedText = NSAttributedString(
            string: "Events",
            attributes: [
                .font: UIFont.systemFont(ofSize: 24, weight: .bold),
                .foregroundColor: UIColor.white
            ]
        )
        return label
        
    }()
    
    let locationButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "location.circle"), for: .normal)
        button.tintColor = .white
        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        return button
        
    }()
    
    let calendarButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "calendar"), for: .normal)
        button.tintColor = .white
        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        return button
        
    }()
    
    let searchView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
        
    }()
    
    let tableView: UITableView = {
        
        let tableView = UITableView(frame: CGRectZero, style: .grouped)
        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        tableView.register(AdvertisementTableViewCell.self, forCellReuseIdentifier: AdvertisementTableViewCell.identifier)
        tableView.register(UpcomingEventsTableViewCell.self, forCellReuseIdentifier: UpcomingEventsTableViewCell.identifier)
        tableView.register(FeaturedEventsTableViewCell.self, forCellReuseIdentifier: FeaturedEventsTableViewCell.identifier)
        tableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: CategoryTableViewCell.identifier)
        tableView.register(NewEventTableViewCell.self, forCellReuseIdentifier: NewEventTableViewCell.identifier)
        tableView.register(ArtistTableViewCell.self, forCellReuseIdentifier: ArtistTableViewCell.identifier)
        tableView.register(VenueTableViewCell.self, forCellReuseIdentifier: VenueTableViewCell.identifier)
        tableView.register(SupportTableViewCell.self, forCellReuseIdentifier: SupportTableViewCell.identifier)
        return tableView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        
        addSubview(topGreenBackground)
        addSubview(titleLabel)
        addSubview(locationButton)
        addSubview(calendarButton)
        addSubview(searchView)
        addSubview(tableView)

    }
    
    private func setupUI() {
        
        backgroundColor = .appBackgroundGray
        
        NSLayoutConstraint.activate([
        
            topGreenBackground.topAnchor.constraint(equalTo: topAnchor, constant: -40),
            topGreenBackground.heightAnchor.constraint(equalToConstant: 180),
            topGreenBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            topGreenBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            
            calendarButton.heightAnchor.constraint(equalToConstant: 30),
            calendarButton.widthAnchor.constraint(equalToConstant: 30),
            
            locationButton.heightAnchor.constraint(equalToConstant: 30),
            locationButton.widthAnchor.constraint(equalToConstant: 30),

            calendarButton.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -5),
            calendarButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            locationButton.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -5),
            locationButton.trailingAnchor.constraint(equalTo: calendarButton.leadingAnchor, constant: -20),
            
            searchView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            searchView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            searchView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            searchView.heightAnchor.constraint(equalToConstant: 60),
            
            tableView.topAnchor.constraint(equalTo: searchView.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        ])

    }
    
    
}
