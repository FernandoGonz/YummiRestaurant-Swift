//
//  OnboardingCollectionViewCell.swift
//  Yummi App
//
//  Created by Fernando González on 27/06/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    
    func setup(_ slide: OnboardingSlide) {
        self.slideImageView.image = slide.image!
        self.slideTitleLabel.text = slide.title
        self.slideDescriptionLabel.text = slide.description
    }
}
