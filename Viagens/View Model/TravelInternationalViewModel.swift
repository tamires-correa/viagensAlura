//
//  TravelInternationalViewModel.swift
//  Viagens
//
//  Created by Tamires Corrêa on 29/10/25.
//

import Foundation

struct TravelInternationalViewModel: TravelViewModel {
    var sectionTitle: String {
        "Internacionais"
    }
    
    var type: TravelViewModelType {
        .international
    }
    
    var travels: [Travel]
    
    var numberOfRows: Int {
        travels.count
    }
    
    init(_ travels: [Travel]) {
        self.travels = travels
    }
}
