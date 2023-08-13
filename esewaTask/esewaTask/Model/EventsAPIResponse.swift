

import Foundation

// MARK: - EventsAPIResponse
struct EventsAPIResponse: Codable {
    let embedded: EventsAPIResponseEmbedded?
    let links: EventsAPIResponseLinks?
    let page: Page?

    enum CodingKeys: String, CodingKey {
        case embedded = "_embedded"
        case links = "_links"
        case page
    }
}

// MARK: - EventsAPIResponseEmbedded
struct EventsAPIResponseEmbedded: Codable {
    let events: [Event]?
}

// MARK: - Event
struct Event: Codable {
    let name: String?
    let type: EventType?
    let id: String?
    let test: Bool?
    let url: String?
    let locale: Locale?
    let images: [Image]?
    let sales: Sales?
    let dates: Dates?
    let classifications: [Classification]?
    let promoter: Promoter?
    let promoters: [Promoter]?
    let info, pleaseNote: String?
    let priceRanges: [PriceRange]?
    let seatmap: Seatmap?
    let accessibility: Accessibility?
    let ticketLimit: TicketLimit?
    let ageRestrictions: AgeRestrictions?
    let ticketing: Ticketing?
    let links: EventLinks?
    let embedded: EventEmbedded?
    let outlets: [Outlet]?

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, images, sales, dates, classifications, promoter, promoters, info, pleaseNote, priceRanges, seatmap, accessibility, ticketLimit, ageRestrictions, ticketing
        case links = "_links"
        case embedded = "_embedded"
        case outlets
    }
}

// MARK: - Accessibility
struct Accessibility: Codable {
    let info: String?
    let ticketLimit: Int?
}

// MARK: - AgeRestrictions
struct AgeRestrictions: Codable {
    let legalAgeEnforced: Bool?
}

// MARK: - Classification
struct Classification: Codable {
    let primary: Bool?
    let segment, genre, subGenre, type: Genre?
    let subType: Genre?
    let family: Bool?
}

// MARK: - Genre
struct Genre: Codable {
    let id: String?
    let name: GenreName?
}

enum GenreName: String, Codable {
    case baseball = "Baseball"
    case connecticut = "Connecticut"
    case group = "Group"
    case losAngeles = "Los Angeles"
    case mlb = "MLB"
    case music = "Music"
    case newYorkTriStateArea = "New York/Tri-State Area"
    case northernNewJersey = "Northern New Jersey"
    case philadelphia = "Philadelphia"
    case rB = "R&B"
    case sports = "Sports"
    case team = "Team"
    case undefined = "Undefined"
}

// MARK: - Dates
struct Dates: Codable {
    let start: Start?
    let timezone: Timezone?
    let status: Status?
    let spanMultipleDays: Bool?
    let initialStartDate: InitialStartDate?
}

// MARK: - InitialStartDate
struct InitialStartDate: Codable {
    let localDate, localTime: String?
    let dateTime: Date?
}

// MARK: - Start
struct Start: Codable {
    let localDate, localTime: String?
    let dateTime: Date?
    let dateTBD, dateTBA, timeTBA, noSpecificTime: Bool?
}

// MARK: - Status
struct Status: Codable {
    let code: Code?
}

enum Code: String, Codable {
    case cancelled = "cancelled"
    case onsale = "onsale"
}

enum Timezone: String, Codable {
    case americaChicago = "America/Chicago"
    case americaLosAngeles = "America/Los_Angeles"
    case americaNewYork = "America/New_York"
}

// MARK: - EventEmbedded
struct EventEmbedded: Codable {
    let venues: [Venue]?
    let attractions: [Attraction]?
}

// MARK: - Attraction
struct Attraction: Codable {
    let name: String?
    let type: AttractionType?
    let id: String?
    let test: Bool?
    let url: String?
    let locale: Locale?
    let externalLinks: ExternalLinks?
    let images: [Image]?
    let classifications: [Classification]?
    let upcomingEvents: UpcomingEvents?
    let links: AttractionLinks?
    let aliases: [String]?

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, externalLinks, images, classifications, upcomingEvents
        case links = "_links"
        case aliases
    }
}

// MARK: - ExternalLinks
struct ExternalLinks: Codable {
    let twitter, wiki, facebook, instagram: [Facebook]?
    let homepage, youtube, spotify: [Facebook]?
    let musicbrainz: [Musicbrainz]?
}

// MARK: - Facebook
struct Facebook: Codable {
    let url: String?
}

// MARK: - Musicbrainz
struct Musicbrainz: Codable {
    let id: String?
}

// MARK: - Image
struct Image: Codable {
    let ratio: Ratio?
    let url: String?
    let width, height: Int?
    let fallback: Bool?
}

enum Ratio: String, Codable {
    case the16_9 = "16_9"
    case the3_2 = "3_2"
    case the4_3 = "4_3"
}

// MARK: - AttractionLinks
struct AttractionLinks: Codable {
    let linksSelf: First?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

// MARK: - First
struct First: Codable {
    let href: String?
}

enum Locale: String, Codable {
    case enUs = "en-us"
}

enum AttractionType: String, Codable {
    case attraction = "attraction"
}

// MARK: - UpcomingEvents
struct UpcomingEvents: Codable {
    let ticketmaster, total, filtered, tmr: Int?

    enum CodingKeys: String, CodingKey {
        case ticketmaster
        case total = "_total"
        case filtered = "_filtered"
        case tmr
    }
}

// MARK: - Venue
struct Venue: Codable {
    let name: String?
    let type: VenueType?
    let id: String?
    let test: Bool?
    let url: String?
    let locale: Locale?
    let images: [Image]?
    let postalCode: String?
    let timezone: Timezone?
    let city: City?
    let state: State?
    let country: Country?
    let address: Address?
    let location: Location?
    let markets: [Genre]?
    let dmas: [DMA]?
    let boxOfficeInfo: BoxOfficeInfo?
    let parkingDetail: String?
    let upcomingEvents: UpcomingEvents?
    let ada: Ada?
    let links: AttractionLinks?
    let social: Social?
    let accessibleSeatingDetail: String?
    let generalInfo: GeneralInfo?

    enum CodingKeys: String, CodingKey {
        case name, type, id, test, url, locale, images, postalCode, timezone, city, state, country, address, location, markets, dmas, boxOfficeInfo, parkingDetail, upcomingEvents, ada
        case links = "_links"
        case social, accessibleSeatingDetail, generalInfo
    }
}

// MARK: - Ada
struct Ada: Codable {
    let adaPhones, adaCustomCopy, adaHours: String?
}

// MARK: - Address
struct Address: Codable {
    let line1: String?
}

// MARK: - BoxOfficeInfo
struct BoxOfficeInfo: Codable {
    let openHoursDetail, phoneNumberDetail, acceptedPaymentDetail, willCallDetail: String?
}

// MARK: - City
struct City: Codable {
    let name: String?
}

// MARK: - Country
struct Country: Codable {
    let name: CountryName?
    let countryCode: CountryCode?
}

enum CountryCode: String, Codable {
    case us = "US"
}

enum CountryName: String, Codable {
    case unitedStatesOfAmerica = "United States Of America"
}

// MARK: - DMA
struct DMA: Codable {
    let id: Int?
}

// MARK: - GeneralInfo
struct GeneralInfo: Codable {
    let generalRule, childRule: String?
}

// MARK: - Location
struct Location: Codable {
    let longitude, latitude: String?
}

// MARK: - Social
struct Social: Codable {
    let twitter: Twitter?
}

// MARK: - Twitter
struct Twitter: Codable {
    let handle: String?
}

// MARK: - State
struct State: Codable {
    let name, stateCode: String?
}

enum VenueType: String, Codable {
    case venue = "venue"
}

// MARK: - EventLinks
struct EventLinks: Codable {
    let linksSelf: First?
    let attractions, venues: [First]?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case attractions, venues
    }
}

// MARK: - Outlet
struct Outlet: Codable {
    let url: String?
    let type: String?
}

// MARK: - PriceRange
struct PriceRange: Codable {
    let type: PriceRangeType?
    let currency: Currency?
    let min, max: Int?
}

enum Currency: String, Codable {
    case usd = "USD"
}

enum PriceRangeType: String, Codable {
    case standard = "standard"
}

// MARK: - Promoter
struct Promoter: Codable {
    let id: String?
    let name: PromoterName?
    let description: Description?
}

enum Description: String, Codable {
    case mlbRegularSeasonNtlUsa = "MLB REGULAR SEASON / NTL / USA"
    case promotedByVenueNtlUsa = "PROMOTED BY VENUE / NTL / USA"
}

enum PromoterName: String, Codable {
    case mlbRegularSeason = "MLB REGULAR SEASON"
    case promotedByVenue = "PROMOTED BY VENUE"
}

// MARK: - Sales
struct Sales: Codable {
    let salesPublic: Public?
    let presales: [Presale]?

    enum CodingKeys: String, CodingKey {
        case salesPublic = "public"
        case presales
    }
}

// MARK: - Presale
struct Presale: Codable {
    let startDateTime, endDateTime: Date?
    let name: PresaleName?
    let description: String?
}

enum PresaleName: String, Codable {
    case mastercardCardholders = "Mastercard Cardholders"
    case me3PromotionalOffer = "Me + 3 Promotional Offer"
    case nyYankeesPastBuyers = "NY Yankees Past Buyers"
    case nyYankeesSeasonTicketLicensees = "NY Yankees Season Ticket Licensees"
}

// MARK: - Public
struct Public: Codable {
    let startDateTime: Date?
    let startTBD, startTBA: Bool?
    let endDateTime: Date?
}

// MARK: - Seatmap
struct Seatmap: Codable {
    let staticURL: String?

    enum CodingKeys: String, CodingKey {
        case staticURL = "staticUrl"
    }
}

// MARK: - TicketLimit
struct TicketLimit: Codable {
    let info: String?
}

// MARK: - Ticketing
struct Ticketing: Codable {
    let safeTix, allInclusivePricing: AllInclusivePricing?
}

// MARK: - AllInclusivePricing
struct AllInclusivePricing: Codable {
    let enabled: Bool?
}

enum EventType: String, Codable {
    case event = "event"
}

// MARK: - EventsAPIResponseLinks
struct EventsAPIResponseLinks: Codable {
    let first, linksSelf, next, last: First?

    enum CodingKeys: String, CodingKey {
        case first
        case linksSelf = "self"
        case next, last
    }
}

// MARK: - Page
struct Page: Codable {
    let size, totalElements, totalPages, number: Int?
}
