//
//  OnboardingSlideBrain.swift
//  Yummi App
//
//  Created by Fernando González on 27/06/22.
//

import UIKit

struct OnboardingSlideBrain {
    
    private let slideArray: [OnboardingSlide] = [
        OnboardingSlide(title: "Delicious Dishes", description: "Experince a variety of amazing dishes from different cultures around the world.", image: UIImage(named: "slide1")),
        OnboardingSlide(title: "World-Class Chefs", description: "Our dishes are prepared by only the best.", image: UIImage(named: "slide2")),
        OnboardingSlide(title: "Instant World-Wide Delivery", description: "Your orders will be delivered instantly irrespective of your location around the world.", image: UIImage(named: "slide3"))
    ]
    
    func getSlideObject(atIndex: Int) -> OnboardingSlide {
        return self.slideArray[atIndex]
    }
    
    func getCount() -> Int{
        return self.slideArray.count
    }
}
