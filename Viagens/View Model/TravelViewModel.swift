//
//  TravelViewModel.swift
//  Viagens
//
//  Created by Tamires Corrêa on 29/10/25.
//

import Foundation

enum TravelViewModelType: String {
    case highlights
    case deals
    case international
}

protocol TravelViewModel {
    var sectionTitle: String { get }
    var type: TravelViewModelType { get }
    var travels: [Travel] { get set }
    var numberOfRows: Int { get }
}

