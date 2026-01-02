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
}
