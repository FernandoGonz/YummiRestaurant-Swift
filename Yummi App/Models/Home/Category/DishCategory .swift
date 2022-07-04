//
//  DishCategory .swift
//  Yummi App
//
//  Created by Fernando González on 02/07/22.
//

import UIKit

struct DishCategory {
    
    let cateogryId: String
    let cateogryImageDesc: String
    let categoryDesc: String
    
    init(categoryId: String, categoryImageDesc: String, categoryDesc: String) {
        self.cateogryId = categoryId
        self.cateogryImageDesc = categoryImageDesc
        self.categoryDesc = categoryDesc
    }
}

