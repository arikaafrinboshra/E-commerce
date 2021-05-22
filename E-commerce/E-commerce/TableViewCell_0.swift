//
//  TableViewCell_0.swift
//  E-commerce
//
//  Created by ARIKA on 22/5/21.
//

import UIKit

class TableViewCell_0: UITableViewCell {

    @IBOutlet weak var bannerCollectionView: UICollectionView!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell_0: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == self.bannerCollectionView) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BannerCollectionViewCell

            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryCollectionViewCell

            return cell
        }
        
    }
    
    
    
}
