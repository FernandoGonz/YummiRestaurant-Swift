//
//  DishBrain.swift
//  Yummi App
//
//  Created by Fernando González on 04/07/22.
//

import Foundation

struct DishBrain {
    
    private let dishCollection: [Dish] = [
        Dish(dishId: "id1", titleDesc: "Garri", imageDesc: "https://picsum.photos/100/200", caloriesDesc: 34.2, descriptionDesc: "This is the best I have ever tasted"),
        Dish(dishId: "id2", titleDesc: "Indomie", imageDesc: "https://picsum.photos/100/200", caloriesDesc: 52.2, descriptionDesc: "This is the best I have ever tasted"),
        Dish(dishId: "id3", titleDesc: "Pizalmio", imageDesc: "https://picsum.photos/100/200", caloriesDesc: 65.2, descriptionDesc: "This is the best I have ever tasted")
    ]
    
    func getDish(atIndex: Int) -> Dish {
        return self.dishCollection[atIndex]
    }
    
    func getCount() -> Int {
        return self.dishCollection.count
    }
}
