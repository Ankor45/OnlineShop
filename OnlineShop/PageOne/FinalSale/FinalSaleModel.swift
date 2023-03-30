//
//  FinalSaleModel.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 30.03.2023.
//

import Foundation

struct FlashSale: Codable {
    
    let flash_sale: [Products]
    
}

struct Products: Codable {
    
    let category: String
    let name: String
    let price: Double
    let discount: Int
    let image_url: String
    
}
