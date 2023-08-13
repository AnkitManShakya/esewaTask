//
//  Event.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 13/08/2023.
//
//
//import Foundation
//
//// MARK: - Event
//struct Event: Codable {
//    let name: String
//    let type: EventType
//    let id: String
//    let test: Bool
//    let url: String
//    let locale: Locale
//    let images: [Image]
//    let sales: Sales
//    let dates: Dates
//    let classifications: [Classification]
//    let promoter: Promoter?
//    let promoters: [Promoter]?
//    let info, pleaseNote: String?
//    let priceRanges: [PriceRange]?
//    let seatmap: Seatmap?
//    let accessibility: Accessibility?
//    let ticketLimit: TicketLimit?
//    let ageRestrictions: AgeRestrictions?
//    let ticketing: Ticketing?
//    let links: EventLinks
//    let embedded: EventEmbedded
//    let outlets: [Outlet]?
//
//    enum CodingKeys: String, CodingKey {
//        case name, type, id, test, url, locale, images, sales, dates, classifications, promoter, promoters, info, pleaseNote, priceRanges, seatmap, accessibility, ticketLimit, ageRestrictions, ticketing
//        case links = "_links"
//        case embedded = "_embedded"
//        case outlets
//    }
//}
