//
//  HomeTableViewHeader.swift
//  Viagens
//
//  Created by Tamires Corrêa on 21/10/25.
//

import UIKit

class HomeTableViewHeader: UIView {

//MARK: Outlets
    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImage: UIImageView!
    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var sortButton: UIButton!
    
    func settingsHeaderView(){
        headerView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
        headerView.layer.cornerRadius = 80
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
    }
}
