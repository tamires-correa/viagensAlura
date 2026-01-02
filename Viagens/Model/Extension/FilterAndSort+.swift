//
//  FilterAndSort+.swift
//  Viagens
//
//  Created by Tamires Corrêa on 30/12/25.
//

import Foundation

//MARK: Filter Button
extension FilterType{
    var title: String {
        switch self{
        case .all:
            return "Todos"
        case .highlights:
            return "Destaques"
        case .national:
            return "Destinos Nacionais"
        case .international:
            return "Destinos Internacionais"
        case .freeCancel:
            return "Cancelamento Grátis"
        case .deals:
            return "Ofertas"
        }
    }
}

//MARK: Sort Button
extension SortType{
    var title: String{
        switch self{
        case .lowPrice:
            return "Menor Preço"
        case.highPrice:
            return "Maior Preço"
        case .nameAz:
            return "Nome (A-Z)"
        case .nameZa:
            return "Nome (Z-A)"
        }
    }
}
