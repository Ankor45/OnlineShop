//
//  LatestScroll.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 29.03.2023.
//

import SwiftUI

struct LatestScroll: View {
    @StateObject private var latestVM = LatestViewModel()
    
    var body: some View {
        
        HStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 50) {
                    
                    ForEach(latestVM.latestProducts, id: \.name){ product in
                        
                        LatestProduct(product: product )
                    }
                }
            }
        }
        .padding(5)
        .onAppear(perform: latestVM.fetchLatestProduct)
    }
    
}

struct LatestScroll_Previews: PreviewProvider {
    static var previews: some View {
        LatestScroll()
        
    }
}
