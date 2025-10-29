//
//  TravelTypes.swift
//  Viagens
//
//  Created by Tamires Corrêa on 24/10/25.
//

import Foundation

struct TravelTypes: Decodable {
    let highlights: [Travel]?
    let deals: [Travel]?
    let international: [Travel]?
}

struct ServerResponse: Decodable {
    let travels: TravelTypes
}
