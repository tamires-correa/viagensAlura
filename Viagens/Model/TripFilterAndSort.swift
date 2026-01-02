//
//  TripFilterAndSort.swift
//  Viagens
//
//  Created by Tamires Corrêa on 30/12/25.
//

import Foundation

struct TripFilterAndSort{
    static func apply(trips: [Travel], filter: FilterType, sort: SortType) -> [Travel] {
        var result = trips
        
        //MARK: Filter
        switch filter {
        case .all:
            break
        case .highlights:
            result = result.filter{$0.isHighlight}
        case .national:
            result = result.filter{!$0.isInternational}
        case .international:
            result = result.filter{$0.isInternational}
        case .freeCancel:
            result = result.filter{$0.isFreeCancel}
        case .deals:
            result = result.filter{$0.isDeal}
        }
        
        //MARK: Sort
        switch sort {
        case .lowPrice:
            result.sort { $0.price < $1.price }
        case .highPrice:
            result.sort { $0.price > $1.price }
        case .nameAz:
            result.sort { $0.title < $1.title}
        case .nameZa:
            result.sort { $0.title > $1.title}
        }
        return result
    }
   
    static func processSections(allSections: [TravelViewModel], filter: FilterType, sort: SortType) -> [TravelViewModel]{
        
        let allTravels = combineAndFlagTravels(from: allSections)
        let filteredTravels = apply(trips: allTravels, filter: filter, sort: sort)
        
        return reorganizeSections(with: filteredTravels, filter: filter)
    }
    
    // MARK: - Private Helpers
    
    private static func combineAndFlagTravels(from sections: [TravelViewModel]) -> [Travel] {
        var allTravels: [Travel] = []
        
        for viewModel in sections {
            var travelsWithFlags = viewModel.travels
            
            for i in 0..<travelsWithFlags.count {
                switch viewModel.type {
                case .highlights:
                    travelsWithFlags[i].isHighlight = true
                case .deals:
                    travelsWithFlags[i].isDeal = true
                case .international:
                    break
                }
            }
            
            allTravels.append(contentsOf: travelsWithFlags)
        }
        
        return allTravels
    }
    
    private static func reorganizeSections(with travels: [Travel], filter: FilterType) -> [TravelViewModel]{
        var sections: [TravelViewModel] = []
        
        switch filter {
        case .all:
            let highlights = travels.filter { $0.isHighlight }
            let deals = travels.filter { $0.isDeal }
            let international = travels.filter { $0.isInternational && !$0.isHighlight && !$0.isDeal }
            
            if !highlights.isEmpty {
                sections.append(TravelHighlightsViewModel(highlights))
            }
            if !deals.isEmpty {
                sections.append(TravelDealsViewModel(deals))
            }
            if !international.isEmpty {
                sections.append(TravelInternationalViewModel(international))
            }
            
        case .highlights, .national, .international, .freeCancel, .deals:
            
            if !travels.isEmpty {
                sections.append(FilteredTravelViewModel(travels, title: filter.title))
            }
        }
        
        return sections
    }
}

// MARK: - Helper ViewModel
struct FilteredTravelViewModel: TravelViewModel {
    var sectionTitle: String
    var type: TravelViewModelType { .highlights }
    var travels: [Travel]
    var numberOfRows: Int { travels.count }
    
    init(_ travels: [Travel], title: String) {
        self.travels = travels
        self.sectionTitle = title
    }
}
