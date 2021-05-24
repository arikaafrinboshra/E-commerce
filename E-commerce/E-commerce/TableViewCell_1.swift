//
//  TableViewCell_1.swift
//  E-commerce
//
//  Created by ARIKA on 23/5/21.
//

import UIKit

class TableViewCell_1: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var seeMoreBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var productName_0 = ["Unstiched Embroidered",
                         "Bioaqua Pink Cherry Lip Private",
                         "STM Cap Style New Version Bike",
                         "Polyester Half Fingered Hand",
                         "Bio Oil Specialist Skincare Oil - 60ml",
                         "New Women Tote Purse Leather",
                         "Polyester Motorcycle Gloves",
                         "Pro Biker Motorcycle Riding",
                         "White Rice Whitening Pore",
                         "Leather Backpack for Women -"]
    
    var productName_1 = ["BUY 1 Honda CB150R",
                         "BUY 1 XSR 155cc Motor Bike and",
                         "Buy Hoichoi Subscription - 12",
                         "Buy Hoichoi Subscription - 12",
                         "Buy 1 Bajaj Platina ES 100 Motor Bike",
                         "Buy 1 Bajaj CT-100 ES Motor Bike and",
                         "Buy 1 Bajaj Pulser 150cc Motor Bike",
                         "Buy 1 Bajaj Pulser 150cc Double Disk",
                         "Buy 1 Bajaj Discover 110cc",
                         "Buy 1 Bajaj Discover 125CC"]
    
    var productName_2 = ["Long Beach Suites Dhaka - Long",
                         "Long Beach Suites Dhaka - Executive",
                         "Long Beach Suites Dhaka - Premier",
                         "Long Beach Suites Dhaka - Premier",
                         "Long Beach Suites Dhaka - Super",
                         "Long Beach Suites Dhaka - Super",
                         "Long Beach Suites Dhaka - Deluxe",
                         "Ambrosia Guest House Deluxe Twin",
                         "Ambrosia Guest House Deluxe",
                         "Ambrosia Guest House Standard"]
    
    var productName_3 = ["Buy 1 OPPO F19 Smartphone -",
                         "Buy 1 OPPO F19 Smartphone -",
                         "Robi 10 Minute School 24 Hours",
                         "Robi 10 Minute School English",
                         "iCarnival Smart Gift Card - 10000 TK",
                         "iCarnival Smart Gift Card - 5000 TK",
                         "iCarnival Smart Gift Card - 2000 TK",
                         "SSC Math Exam Preparation Course",
                         "Onubhutir Obhidhan - Tahsan",
                         "ghoori English Learning - BBC"]
    
    
    
    var productPrice_0 = ["৳ 1747",
                          "৳ 249",
                          "৳ 0",
                          "৳ 332",
                          "৳ 785",
                          "৳ 1666",
                          "৳ 322",
                          "৳ 322",
                          "৳ 304",
                          "৳ 1632"]
    
    var productPrice_1 = ["৳ 550000",
                          "৳ 525000",
                          "৳ 700",
                          "৳ 500",
                          "৳ 99500",
                          "৳ 95500",
                          "৳ 169900",
                          "৳ 180900",
                          "৳ 117900",
                          "৳ 131500"]
    
    var productPrice_2 = ["৳ 13920",
                          "৳ 12528",
                          "৳ 9744",
                          "৳ 9048",
                          "৳ 8352",
                          "৳ 6960",
                          "৳ 6264",
                          "৳ 3360",
                          "৳ 3360",
                          "৳ 2800"]
    
    var productPrice_3 = ["৳ 21990",
                          "৳ 21990",
                          "৳ 399",
                          "৳ 399",
                          "৳ 7520",
                          "৳ 3760",
                          "৳ 1504",
                          "৳ 960",
                          "৳ 179",
                          "৳ 115"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //seeMoreBtn.layer.cornerRadius = 5
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell_1: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return productName_0.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        
        cell.name.text = productName_0[indexPath.row]
        cell.price.text = productPrice_0[indexPath.row]
        
        return cell
        
    }
    
}

