//
//  FilterType.swift
//  Viagens
//
//  Created by Tamires Corrêa on 17/12/25.
//

import Foundation

enum FilterType: String, CaseIterable{
    case all 
    case national
    case international
    case freeCancel
    case deals
}

enum SortType: String, CaseIterable{
    case lowPrice
    case highPrice
    case nameAz
    case nameZa
}
