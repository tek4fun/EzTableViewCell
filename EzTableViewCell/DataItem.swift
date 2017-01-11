//
//  DataItem.swift
//  EzTableViewCell
//
//  Created by iOS Student on 1/10/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class DataItem{
    var imageLogo: UIImage!
    var nameFoodballClub: String!
    var nameStadium: String!
    var imageStarRating: UIImage!

    init(nameFC: String, nameStd: String, imgLogo: String, imgStar: Int){
        self.imageLogo = UIImage(named: imgLogo)
        self.imageStarRating = UIImage(named: "\(imgStar)stars.png")
        self.nameFoodballClub = nameFC
        self.nameStadium = nameStd
    }
}
