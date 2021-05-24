//
//  ViewController.swift
//  E-commerce
//
//  Created by ARIKA on 22/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var homeTableView: UITableView!
    
    
    var titleArr = ["Evaly Fashion Mall",
                    "Evaly Foorti",
                    "Hotel & Tours",
                    "Mega Quick Deal"]
    
    var subTitleArr = ["For The Fashionable You!",
                       "Buy 1 Get 1 Deals & More",
                       "Best Hotels & Tour Deals",
                       "Exclusive Offers!"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
        searchBtn.layer.cornerRadius = 5
        
        
        
        //        self.tableView.rowHeight = UITableViewAutomaticDimension
        //        self.tableView.estimatedRowHeight = 200.0
        
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var c = titleArr.count
        c+=1
        
        return c
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row == 0) {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell_0", for: indexPath) as! TableViewCell_0
            
            return cell
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell_1", for: indexPath) as! TableViewCell_1
            
            cell.title.text = titleArr[indexPath.row - 1]
            cell.subTitle.text = subTitleArr[indexPath.row - 1]
            
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 300
        
    }
    
    
}

