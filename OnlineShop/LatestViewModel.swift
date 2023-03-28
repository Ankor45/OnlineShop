//
//  LatestViewModel.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 28.03.2023.
//

import Foundation

final class LatestViewModel: ObservableObject {
    
    @Published var latestProducts: [Latest] = []
    
    func fetchLatestProduct() {
        
        let urlLatest = "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7"
        if let url = URL(string: urlLatest) {
            
            URLSession
                .shared
                .dataTask(with: url) { [weak self] data, response, error in
                    
                    DispatchQueue.main.async {
                        
                        if let error = error {
                            //
                        } else {
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                            
                            if let data = data,
                               let latestProducts = try? decoder.decode([Latest].self, from: data) {
                                
                                self?.latestProducts = latestProducts
                                
                            } else {
                                
                            }
                        }
                    }
                }.resume()
        }
    }
}
