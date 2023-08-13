//
//  EventDetailsViewController.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 09/08/2023.
//

import UIKit

class EventDetailsViewController: UIViewController {
    
    let screenView: EventDetailsView = EventDetailsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = screenView
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
}
