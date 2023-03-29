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
        guard let url = URL(string: urlLatest) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let latestProducts = try JSONDecoder().decode(Array.self, from: data)
                DispatchQueue.main.async {
                    self?.latestProducts = latestProducts.latest
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}
