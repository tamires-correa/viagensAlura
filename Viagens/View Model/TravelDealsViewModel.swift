//
//  TravelDealsViewModel.swift
//  Viagens
//
//  Created by Tamires Corrêa on 29/10/25.
//

import Foundation
struct TravelDealsViewModel: TravelViewModel{
    var sectionTitle: String {
        "Ofertas"
    }
    
    var type: TravelViewModelType {
        .deals
    }
    
    var travels: [Travel]
    
    var numberOfRows: Int{
        travels.count
    }
    
    init(travels: [Travel]) {
        self.travels = travels
    }
}
