//
//  Popular.swift
//  FoodApp
//
//  Created by Mirzabek on 23/07/22.
//

import SwiftUI

// Model And Sample Data...
 
struct Popular: Identifiable{
    var id: String = UUID().uuidString
    var title : String
    var description: String
    var image : String
    var price : String
    
}

var popular_items = [
    Popular(title: "The SandWich", description: "The sandwiches", image: "sandwic", price: "4.9"),
    Popular(title: "Beef Burger", description: "Chessy Mozarela", image: "burgerr", price: "10.9"),
    Popular(title: "Double Burger", description: "Double Beef", image: "burger", price: "12.3")
]
