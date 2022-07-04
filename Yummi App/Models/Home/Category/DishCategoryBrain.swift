//
//  DishCategoryBrain.swift
//  Yummi App
//
//  Created by Fernando González on 02/07/22.
//

import Foundation

struct DishCategoryBrain {
    
    private let categories: [DishCategory] = [
        DishCategory(categoryId: "id1", categoryImageDesc: "https://picsum.photos/100/200", categoryDesc: "Africa Dish"),
        DishCategory(categoryId: "id2", categoryImageDesc: "https://picsum.photos/100/200", categoryDesc: "Africa Dish"),
        DishCategory(categoryId: "id3", categoryImageDesc: "https://picsum.photos/100/200", categoryDesc: "Africa Dish"),
        DishCategory(categoryId: "id4", categoryImageDesc: "https://picsum.photos/100/200", categoryDesc: "Africa Dish"),
        DishCategory(categoryId: "id5", categoryImageDesc: "https://picsum.photos/100/200", categoryDesc: "Africa Dish")
    ]
    
    func getCategory(atIndex: Int) -> DishCategory {
        return self.categories[atIndex]
    }
    
    func getCount() -> Int {
        return self.categories.count
    }
    
}
