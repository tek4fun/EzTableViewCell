//
//  DetailVC.swift
//  EzTableViewCell
//
//  Created by iOS Student on 1/11/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var stringTilte: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.title = stringTilte
        print("\(stringTilte!).jpg")
        self.imageView.image = UIImage(named: "\(stringTilte!).jpg")
    }

}
