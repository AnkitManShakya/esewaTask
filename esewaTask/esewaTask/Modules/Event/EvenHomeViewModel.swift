//
//  EvenHomeViewModel.swift
//  esewaTask
//
//  Created by Ankit Man Shakya on 13/08/2023.
//

import Foundation

class EventHomeViewModel{
    
    let httpClient: HttpClient = HttpClient()
    
    func getEventData()
    {
        let eventsURL = "https://app.ticketmaster.com/discovery/v2/events.json?apikey=S3IURwLm6MuL50gi0FrOrCAcGvFaADoK"

        httpClient.getApiData(requestUrl: URL(string: eventsURL)!, resultType: EventsAPIResponse.self) { (eventResponse) in
            debugPrint(eventResponse.embedded?.events?.first?.id ?? "")
                }
        }
    }

