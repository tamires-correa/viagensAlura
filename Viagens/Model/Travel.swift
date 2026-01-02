//
//  Travel.swift
//  Viagens
//
//  Created by Tamires Corrêa on 24/10/25.
//

import Foundation

struct Travel: Decodable{
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let nights: Int
    let guests: Int
    let originalPrice: Double
    let price: Double
    let cancellation: String
    
    var isDeal: Bool = false
    var isHighlight: Bool = false
    
    enum CodingKeys: String, CodingKey {
            case id, title, subtitle, image, nights, guests, originalPrice, price, cancellation
        }
    
    var settingsNightLabel: String{
        let nightsText = nights == 1 ? "Noite" : "Noites"
        let guestsText = guests == 1 ? "Hóspede" : "Hóspedes"
        return "\(nights) \(nightsText) - \(guests) \(guestsText)"
    }
    
    var isInternational: Bool {
        let internationalDestinations = ["Barcelona", "Cancún", "Maldivas", "Disney Orlando", "Santiago"]
        return internationalDestinations.contains(title)
    }
    
    var isFreeCancel: Bool {
        return cancellation.uppercased().contains("GRÁTIS")
    }
}
