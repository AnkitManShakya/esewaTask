//
//  EventViewController.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 03/08/2023.
//

import UIKit

class EventHomeViewController: UIViewController {
    
    let screenView: EventHomeView
    let viewModel: EventHomeViewModel
    
    init(screenView: EventHomeView, viewModel: EventHomeViewModel ) {
        self.screenView = screenView
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = screenView
        setupDelegates()
        viewModel.getEventData()
//        showEventDetails()
    }
    
    private func showEventDetails() {
        let page = EventDetailsViewController()
        self.navigationController?.pushViewController(page, animated: true)
    }
    
    private func setupDelegates() {
        screenView.tableView.dataSource = self
        screenView.tableView.delegate = self
    }
    
}


// MARK: Table view delegates
extension EventHomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 175
        case 1:
            return 75
        case 2:
            return 325
        case 3:
            return 100
        case 4:
            return 800
        case 5:
            return 120
        case 6:
            return 225
        case 7:
            return 150
        default:
            return 100
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        8
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = EventSectionHeader()
        switch section {
        case 1:
            view.setupViewWith(.upcoming)
            return view
        case 2:
            view.setupViewWith(.featured)
            return view
        case 3:
            view.setupViewWith(.catagory)
            return view
        case 4:
            view.setupViewWith(.new)
            return view
        case 5:
            view.setupViewWith(.artist)
            return view
        case 6:
            view.setupViewWith(.venue)
            return view
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: AdvertisementTableViewCell.identifier, for: indexPath) as? AdvertisementTableViewCell else { return UITableViewCell() }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: UpcomingEventsTableViewCell.identifier, for: indexPath) as? UpcomingEventsTableViewCell else { return UITableViewCell() }
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FeaturedEventsTableViewCell.identifier, for: indexPath) as? FeaturedEventsTableViewCell else { return UITableViewCell() }
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifier, for: indexPath) as? CategoryTableViewCell else { return UITableViewCell() }
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NewEventTableViewCell.identifier, for: indexPath) as? NewEventTableViewCell else { return UITableViewCell() }
            return cell
        case 5:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ArtistTableViewCell.identifier, for: indexPath) as? ArtistTableViewCell else { return UITableViewCell() }
            return cell
        case 6:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: VenueTableViewCell.identifier, for: indexPath) as? VenueTableViewCell else { return UITableViewCell() }
            return cell
        case 7:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SupportTableViewCell.identifier, for: indexPath) as? SupportTableViewCell else { return UITableViewCell() }
            return cell
        default:
           break
        }
        return UITableViewCell()
    }
    
}
