//
//  MasterTableVC.swift
//  EzTableViewCell
//
//  Created by iOS Student on 1/10/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {
    var arrayData: [DataItem]!
    var detailVC: DetailVC!

    override func viewDidLoad() {
        super.viewDidLoad()
        let item1: DataItem = DataItem.init(nameFC: "Manchester United", nameStd: "Old Trafford", imgLogo: "MU",imgStar: 5)
        let item2: DataItem = DataItem.init(nameFC: "Chelsea", nameStd: "Stamford Bridge", imgLogo: "Chelse",imgStar: 4)
        let item3: DataItem = DataItem.init(nameFC: "Arsenal", nameStd: "Emirates", imgLogo: "Arsenal",imgStar: 4)
        let item4: DataItem = DataItem.init(nameFC: "Manchester City", nameStd: "Etihad", imgLogo: "MC",imgStar: 3)
        let item5: DataItem = DataItem.init(nameFC: "LiverPool", nameStd: "Anfield", imgLogo: "Liverpool",imgStar: 2)
        arrayData = [item1,item2,item3,item4,item5]
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayData.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCellMaster! = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCellMaster
        let item: DataItem = arrayData[indexPath.row]
        cell.lblFoodBallClub.text = item.nameFoodballClub
        cell.lblStadium.text = item.nameStadium
        cell.imgLogo.image = item.imageLogo
        cell.imgStarRating.image = item.imageStarRating

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if detailVC == nil {
            detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        }
        let item: DataItem = arrayData[(indexPath as IndexPath).row]
        detailVC.stringTilte = item.nameStadium
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
}
