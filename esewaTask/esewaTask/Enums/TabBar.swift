
import Foundation
import UIKit

enum TabBar {
    case event
    case ticket
    case prize
    
    var icon: String {
        switch self {
        case .event:
            return "calendar"
        case .ticket:
            return "ticket"
        case .prize:
            return "gift"
        }
    }
    
    var title: String {
        switch self {
        case .event:
            return "Event"
        case .ticket:
            return "Ticket"
        case .prize:
            return "Prize"
        }
    }
    
    var controller: UIViewController {
        switch self {
        case .event:
            return EventHomeViewController(screenView: EventHomeView(), viewModel: EventHomeViewModel())
        case .ticket:
            return TicketViewController()
        case .prize:
            return PrizeViewController()
        }
    }
}
