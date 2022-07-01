//
//  OnboardingSlide.swift
//  Yummi App
//
//  Created by Fernando González on 25/06/22.
//

import UIKit

struct OnboardingSlide {
    
    let title: String
    let description: String
    let image: UIImage?
    
    init(title: String, description: String, image: UIImage?) {
        self.title = title
        self.description = description
        self.image = image
    }
}
