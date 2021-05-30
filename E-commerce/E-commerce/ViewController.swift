//
//  ViewController.swift
//  E-commerce
//
//  Created by ARIKA on 22/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    var c:Int = 0
    var d:Int = 0
    //Outlets
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var homeTableView: UITableView!
    
    //Variables
    var titleArr = ["Evaly Fashion Mall",
                    "Evaly Foorti",
                    "Hotel & Tours",
                    "Mega Quick Deal"]
    
    var subTitleArr = ["For The Fashionable You!",
                       "Buy 1 Get 1 Deals & More",
                       "Best Hotels & Tour Deals",
                       "Exclusive Offers!"]
    
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
    
    var beforeDiscount = ["৳ 25673",
                          "",
                          "৳ 473",
                          "৳ 700",
                          "৳ 8634",
                          "",
                          "৳ 2375",
                          "",
                          "৳ 300",
                          "৳ 250"]
    
    var titleArr_1 = ["Evaly Express",
                      "Shops - Cash On Delivery (COD)"]
    
    var evalyExpress = ["Shwapno",
                                  "Mobile Express",
                                  "AKS Pharmacy",
                                  "Wholesale Club",
                                  "Bengal Meat",
                                  "Little India",
                                  "Express Grocery",
                                  "Khaleque & Sons"]
    
    var shops = ["Armandy Kids for Cash on Delivery Service",
                                  "Shok Online Market for Cash on Delivery Service",
                                  "Good Choice for Cash on Delivery Service",
                                  "Jomjom Traders for Cash on Delivery Service",
                                  "Mantasha Nabil Enterprise for Cash on Deliery Service",
                                  "Leela for Cash on Delivery Service",
                                  "Global Technology & Safety Solution for Cash on Delivery Service",
                                  "SK FASHION TRADERS for Cash on Delivery Service"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
        searchBtn.layer.cornerRadius = 5
        
        //        self.tabl22ৌeView.rowHeight = UITableViewAutomaticDimension
        //        self.tableView.estimatedRowHeight = 200.0
        
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        c = titleArr.count
        d = titleArr_1.count
        
        return c + d + 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row == 0) {

            let cell = tableView.dequeueReusableCell(withIdentifier: "cell_0", for: indexPath) as! TableViewCell_0

            return cell
        }
        
        else if (indexPath.row >= 1 && indexPath.row <= c){
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell_1", for: indexPath) as! TableViewCell_1
            
            cell.title.text = titleArr[indexPath.row - 1]
            cell.subTitle.text = subTitleArr[indexPath.row - 1]
            
            if (indexPath.row == 1) {
                cell.productName = productName_0
                cell.productPrice = productPrice_0
            }
            else if (indexPath.row == 2) {
                cell.productName = productName_1
                cell.productPrice = productPrice_1
            }
            else if (indexPath.row == 3) {
                cell.productName = productName_2
                cell.productPrice = productPrice_2
            }
            else if (indexPath.row == 4) {
                cell.productName = productName_3
                cell.productPrice = productPrice_3
            }
            
            return cell
        }
        else if (indexPath.row >= 5 && indexPath.row <= 6) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell_2", for: indexPath) as! TableViewCell_2
            
            cell.title.text = titleArr_1[indexPath.row - c - 1]
            
            if (indexPath.row == 5) {
                cell.nameArr = evalyExpress
            }
            else if (indexPath.row == 6) {
                cell.nameArr = shops
            }
            
            return cell
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell_3", for: indexPath) as! TableViewCell_3
            
            cell.productName = productName_3
            cell.productPrice = productPrice_3
            cell.beforeDiscount = beforeDiscount
            
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if (indexPath.row == 0) {
            return 280
        }
        else if (indexPath.row >= 1 && indexPath.row <= c) {
            return 210
        }
        else if (indexPath.row >= 5 && indexPath.row <= 6) {
            return 280
        }
        else {
            return 1300
        }
        
    }
    
    
}

