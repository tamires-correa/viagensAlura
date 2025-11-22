//
//  Shadow+.swift
//  Viagens
//
//  Created by Tamires Corrêa on 22/11/25.
//

import UIKit

extension UIView {
    func addShadow(){
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = self.traitCollection.displayScale
        layer.cornerRadius = 10
    }
}
