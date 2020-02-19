//
//  ForecastCell.swift
//  playground
//
//  Created by Joseph Vadala on 2/19/20.
//  Copyright © 2020 community. All rights reserved.
//

import UIKit

class ForecastCell: UITableViewCell {
    
    @IBOutlet var iconLabel: UILabel?
    @IBOutlet var temperatureLabel: UILabel?
    @IBOutlet var shortDescriptionLabel: UILabel?
    @IBOutlet var dayNumber: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
