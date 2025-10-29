//
//  TravelHighlightsViewModel.swift
//  Viagens
//
//  Created by Tamires Corrêa on 29/10/25.
//

import Foundation

struct TravelHighlightsViewModel: TravelViewModel {
    var sectionTitle: String{
        "Destaques"
    }
    
    var type: TravelViewModelType {
        .highlights
    }
    
    var travels: [Travel]
    
    var numberOfRows: Int{
        travels.count
    }
    
    init(_ travels: [Travel]) {
        self.travels = travels
    }
}


