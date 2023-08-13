//
//  SupportTableViewCell.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 08/08/2023.
//

import UIKit

class SupportTableViewCell: UITableViewCell {
    
    let tableView: UITableView = {
        
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.showsVerticalScrollIndicator = false
        tableView.register(IndividualSupportTableViewCell.self, forCellReuseIdentifier: IndividualSupportTableViewCell.identifier)
        tableView.isScrollEnabled = false
        tableView.separatorStyle = .singleLine
        return tableView
        
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupDelegates()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupDelegates() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    private func setupUI() {
        selectionStyle = .none
        backgroundColor = .clear
        layer.cornerRadius = 14
        clipsToBounds = true
        contentView.addSubview(tableView)
        
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: contentView.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),

        ])
    }
    
}

extension SupportTableViewCell: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: IndividualSupportTableViewCell.identifier) as? IndividualSupportTableViewCell else { return UITableViewCell() }
        return cell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
}
