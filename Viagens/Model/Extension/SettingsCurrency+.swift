//
//  SettingsCurrency+.swift
//  Viagens
//
//  Created by Tamires Corrêa on 14/11/25.
//
import UIKit

extension Double{
    func toCurrency() -> String {
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
    
    func toStrikethroughCurrecy() -> NSAttributedString{
        let originalPriceText = self.toCurrency()
        let attributedString = NSMutableAttributedString(string: originalPriceText)
        attributedString.addAttribute(.strikethroughStyle, value: 1, range: NSRange(location: 0, length: attributedString.length))
        return attributedString
    }
}
