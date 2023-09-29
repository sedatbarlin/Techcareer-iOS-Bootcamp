//
//  Categories.swift
//  Getir
//
//  Created by Sedat on 25.09.2023.
//

import Foundation

class Categories{
    var categoryId: Int?
    var categoryName: String?
    var categoryImage: String?
    
    init(categoryId: Int, categoryName: String, categoryImage: String) {
        self.categoryId = categoryId
        self.categoryName = categoryName
        self.categoryImage = categoryImage
    }
}
