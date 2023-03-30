//
//  FinalSaleViewModel.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 30.03.2023.
//

import Foundation

final class FinalSaleViewModel: ObservableObject {
    
    @Published var finalSaleProducts: [Products] = []
    
    func fetchFinalSaleProducts() {
        
        let urlFinalSale = "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac"
        
        guard let url = URL(string: urlFinalSale) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let finalSaleProducts = try JSONDecoder().decode(FlashSale.self, from: data)
                DispatchQueue.main.async {
                    self?.finalSaleProducts = finalSaleProducts.flash_sale
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
