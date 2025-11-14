//
//  SettingsCurrency+.swift
//  Viagens
//
//  Created by Tamires Corrêa on 14/11/25.
//

import Foundation
extension Double{
    func toCurreny() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "pt_BR")
        
//        if self.truncatingRemainder(dividingBy: 1) == 0{
//            formatter.minimumFractionDigits = 0
//            formatter.maximumFractionDigits = 0
//        } else {
//            formatter.minimumFractionDigits = 2
//            formatter.maximumFractionDigits = 2
//        }
        return formatter.string(from: NSNumber(value: self)) ?? "R$ 0"
    }
}
