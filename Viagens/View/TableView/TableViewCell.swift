//
//  TableViewCell.swift
//  Viagens
//
//  Created by Tamires Corrêa on 23/10/25.
//

import UIKit

class TableViewCell: UITableViewCell {

    //MARK: Outlets
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var tripImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var nightsLabel: UILabel!
    @IBOutlet weak var originalPriceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var tripStatusLabel: UILabel!
    
    func configureCell(_ travel: Travel){
        tripImage.image = UIImage(named: travel.image)
        titleLabel.text = travel.title
        subtitleLabel.text = travel.subtitle
        nightsLabel.text = "\(travel.nights) noites"
        priceLabel.text = "R$ \(travel.price)"
        tripStatusLabel.text = travel.cancellation
        
        priceLabel.text = travel.price.toCurrency()
        
        originalPriceLabel.attributedText = travel.originalPrice.toStrikethroughCurrecy()
        
        nightsLabel.text = travel.settingsNightLabel
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
