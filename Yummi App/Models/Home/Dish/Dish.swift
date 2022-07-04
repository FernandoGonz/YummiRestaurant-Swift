//
//  Dish.swift
//  Yummi App
//
//  Created by Fernando González on 04/07/22.
//

import Foundation

struct Dish {
    
    let dishId: String
    let titleDesc: String
    let imageDesc: String
    let caloriesDesc: Double
    let descriptionDesc: String
    var formattedCalories: String {
        return String(format: "%.1f", self.caloriesDesc)
    }
    
    init(dishId: String, titleDesc: String, imageDesc: String, caloriesDesc: Double, descriptionDesc: String) {
        self.dishId = dishId
        self.titleDesc = titleDesc
        self.imageDesc = imageDesc
        self.caloriesDesc = caloriesDesc
        self.descriptionDesc = descriptionDesc
    }
}
