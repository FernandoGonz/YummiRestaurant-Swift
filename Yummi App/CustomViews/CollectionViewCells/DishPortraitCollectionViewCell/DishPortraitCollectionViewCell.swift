//
//  DishPortraitCollectionViewCell.swift
//  Yummi App
//
//  Created by Fernando González on 04/07/22.
//

import UIKit
import Kingfisher

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(with dish: Dish) {
        self.titleLabel.text = dish.titleDesc
        self.dishImageView.kf.setImage(with: dish.imageDesc.asUrl)
        self.caloriesLabel.text = dish.formattedCalories
        self.descriptionLabel.text = dish.descriptionDesc
    }
}
