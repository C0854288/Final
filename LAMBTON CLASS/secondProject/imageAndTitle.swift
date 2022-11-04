//
//  imageAndTitle.swift
//  secondProject
//
//  Created by Sunkara Vishnu vardhan on 2022-09-11.
//

import UIKit

class imageAndTitle: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var title: UIButton!
    func setUp(with imageAndTitle: frontView) {
        
        image.image = imageAndTitle.image
        //title.text = imageAndTitle.title
        
    }
     func tappedMe() {
        print("Tapped on Image")
    }
}
