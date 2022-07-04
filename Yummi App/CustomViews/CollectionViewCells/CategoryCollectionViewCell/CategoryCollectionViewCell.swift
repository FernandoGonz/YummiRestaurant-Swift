//
//  CategoryCollectionViewCell.swift
//  Yummi App
//
//  Created by Fernando González on 01/07/22.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(with category: DishCategory) {
        self.categoryLabel.text = category.categoryDesc
        self.categoryImageView.kf.setImage(with: category.cateogryImageDesc.asUrl)
    }

}
