//
//  TableViewCell_2.swift
//  E-commerce
//
//  Created by ARIKA on 26/5/21.
//

import UIKit

class TableViewCell_2: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var seeAllBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var nameArr = [String]()
    
    @IBAction func seeAllBtn(_ sender: UIButton) {
        
    }
    
    
    
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

extension TableViewCell_2: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //print("check - \(nameArr.count)")
        //print("arr - \(nameArr)")
        return nameArr.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SpecialCollectionViewCell
        
        cell.label.text = nameArr[indexPath.row]
        
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.systemGray5.cgColor
        cell.layer.cornerRadius = 7
        
        return cell
    }
    
}
