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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_0", for: indexPath) as! TableViewCell_0

        return cell
    }
    
    
    
    
}

