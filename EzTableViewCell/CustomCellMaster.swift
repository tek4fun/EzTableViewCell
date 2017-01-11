//
//  CustomCellMaster.swift
//  EzTableViewCell
//
//  Created by iOS Student on 1/10/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class CustomCellMaster: UITableViewCell {

    @IBOutlet weak var imgStarRating: UIImageView!
    @IBOutlet weak var lblStadium: UILabel!
    @IBOutlet weak var lblFoodBallClub: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
