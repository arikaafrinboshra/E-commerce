//
//  TableViewCell_0.swift
//  E-commerce
//
//  Created by ARIKA on 22/5/21.
//

import UIKit
import ImageSlideshow

class TableViewCell_0: UITableViewCell {
    
    
    @IBOutlet var imageSlider: ImageSlideshow!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    let localSource = [BundleImageSource(imageString: "QBanner1"),
                       BundleImageSource(imageString: "QBanner2"),
                       BundleImageSource(imageString: "QBanner3"),
                       BundleImageSource(imageString: "QBanner4"),
                       BundleImageSource(imageString: "QBanner5")]
    
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
        
        imageSlider.slideshowInterval = 3.0
        //imageSlider.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
        imageSlider.contentScaleMode = UIViewContentMode.scaleToFill
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        imageSlider.delegate = self
        
        imageSlider.setImageInputs(localSource)
        imageSlider.layer.cornerRadius = 8
        
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
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryCollectionViewCell
        
        cell.image.clipsToBounds = true
        cell.image.layer.cornerRadius = 25
        cell.image.image = imgArr[indexPath.row]
        cell.label.text = labelArr[indexPath.row]
        
        return cell
        
        
    }
    
}

extension TableViewCell_0: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: collectionView.frame.width / 5 - 8, height: collectionView.frame.width / 5 + 8)
        
    }
    
}

extension TableViewCell_0: ImageSlideshowDelegate {
    
    func imageSlideshow(_ imageSlideshow: ImageSlideshow, didChangeCurrentPageTo page: Int) {
        print("current page:", page)
    }
    
}
