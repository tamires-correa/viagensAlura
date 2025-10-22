//
//  HomeTableViewHeader.swift
//  Viagens
//
//  Created by Tamires Corrêa on 21/10/25.
//

import UIKit

class HomeTableViewHeader: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImage: UIImageView!

    func settingsHeaderView(){
        headerView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
    }

}
