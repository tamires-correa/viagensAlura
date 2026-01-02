//
//  TravelService.swift
//  Viagens
//
//  Created by Tamires Corrêa on 25/10/25.
//

import Foundation

class TravelService {
    static func loadTravels(from filename: String = "server-response") -> [TravelViewModel]? {
        guard let fileURL = Bundle.main.url(forResource: filename, withExtension: "json") else {
            print ("Error: File\(filename).json not found")
            return nil
        }
        do {
            let data = try Data(contentsOf: fileURL)
            let decoder = JSONDecoder()
            let response = try decoder.decode(ServerResponse.self, from: data)
            
            var viewModels: [TravelViewModel] = []
            
            if let highlights = response.travels.highlights {
                let highlightsVM = TravelHighlightsViewModel(highlights)
                viewModels.append(highlightsVM)
            }
            
            if let deals = response.travels.deals{
                let dealsVM = TravelDealsViewModel(deals)
                viewModels.append(dealsVM)
            }
            
            if let international = response.travels.international{
                let internationalVM = TravelInternationalViewModel(international)
                viewModels.append(internationalVM)
            }
            return viewModels
            
        } catch{
            print("Error decoding JSON")
            return nil
        }
    }
}


