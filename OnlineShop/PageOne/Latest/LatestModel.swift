//
//  LatestModel.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 28.03.2023.
//

import Foundation

struct Array: Codable {
    
    let latest: [Latest]
}

struct Latest: Codable {
    
    let category: String
    let name: String
    let price: Int
    let image_url: String
    
}
