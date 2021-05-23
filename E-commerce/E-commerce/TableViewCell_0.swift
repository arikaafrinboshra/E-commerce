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
    
    var imgArr = [ UIImage(named: "QBanner1"),
                   UIImage(named: "QBanner2"),
                   UIImage(named: "QBanner3"),
                   UIImage(named: "QBanner4"),
                   UIImage(named: "QBanner5")]
    var labelArr = ["Newsfeed",
                    "Gift Cards",
                    "Express",
                    "Categories",
                    "Orders"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        categoryCollectionView.layer.backgroundColor = UIColor.white.cgColor
        
        
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
            
            cell.image.clipsToBounds = true
            cell.image.layer.cornerRadius = 8
            cell.image.image = imgArr[indexPath.row]
            
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryCollectionViewCell
            
            cell.image.clipsToBounds = true
            cell.image.layer.cornerRadius = 28
            cell.image.image = imgArr[indexPath.row]
            cell.label.text = labelArr[indexPath.row]
            
            return cell
        }
        
    }
    
    
    //    func collectionView(_ collectionView: UICollectionView,
    //                        heightForItemAt
    //                            indexPath: IndexPath,
    //                        with width: CGFloat) -> CGFloat {
    //
    //        return 150.0
    //
    //    }
    
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//                let size = (collectionView.frame.size.width) / 2
//                return CGSize(width: 10, height: 100/*size + 80*/)
//
//        }
    
}
