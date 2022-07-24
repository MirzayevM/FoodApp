//
//  Category.swift
//  FoodApp
//
//  Created by Mirzabek on 23/07/22.
//

import SwiftUI

// Model And Sample Data...
 
struct Category: Identifiable{
    var id: String = UUID().uuidString
    var image : String
    var title : String
}

var categories = [
    Category(image: "burgerr", title: "Burger"),
    Category(image: "sandwic", title: "SandWich"),
    Category(image: "drink2", title: "Cool Drink"),
    Category(image: "cupcake", title: "Cupcake")
    
]
