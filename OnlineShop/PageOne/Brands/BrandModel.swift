//
//  BrandModel.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 30.03.2023.
//

import Foundation

import SwiftUI

struct Brands: Identifiable {
    
    var id: String = UUID().uuidString
    var image: String
    var title: String
}

var brands = [

    Category(image: "Brand1", title: "Brand1"),
    Category(image: "Brand2", title: "Brand2"),
    Category(image: "Brand3", title: "Brand3")
    
]
