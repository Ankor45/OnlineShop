//
//  CategoryModel.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 28.03.2023.
//

import SwiftUI

struct Category: Identifiable {
    
    var id: String = UUID().uuidString
    var image: String
    var title: String
}

var categories = [

    Category(image: "Phones", title: "Phones"),
    Category(image: "Headphones", title: "Headphones"),
    Category(image: "Games", title: "Games"),
    Category(image: "Cars", title: "Cars"),
    Category(image: "Furniture", title: "Furniture"),
    Category(image: "Kids", title: "Kids")
    
]
