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
    
    var productName = [String]()
    var productPrice = [String]()
    
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
        
        return productName.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        
        cell.name.text = productName[indexPath.row]
        cell.price.text = productPrice[indexPath.row]
        
        return cell
        
    }
    
}

