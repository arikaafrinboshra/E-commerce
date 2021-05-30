//
//  TableViewCell_3.swift
//  E-commerce
//
//  Created by ARIKA on 30/5/21.
//

import UIKit

class TableViewCell_3: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var productName = [String]()
    var productPrice = [String]()
    var beforeDiscount = [String]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell_3: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return productName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! RecentProductCollectionViewCell
        
        cell.name.text = productName[indexPath.row]
        cell.offerPrice.text = productPrice[indexPath.row]
        
        cell.layer.cornerRadius = 8
        
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: beforeDiscount[indexPath.row])
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        cell.price.attributedText = attributeString
        
        if (beforeDiscount[indexPath.row] == "") {
            
            cell.price.isHidden = true
            
        }
        
        return cell
    }
    
    
}
