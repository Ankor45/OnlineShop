//
//  FinalSaleScroll.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 30.03.2023.
//

import SwiftUI

struct FinalSaleScroll: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var finalSaleVM = FinalSaleViewModel()
    
    var body: some View {
        
        HStack {
           
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 50) {
                    
                    ForEach(finalSaleVM.finalSaleProducts, id: \.name){ product in
                            FinalSaleProduct(product: product )
                    }
                }
            }
            
        }
        .padding(5)
        .onAppear(perform: finalSaleVM.fetchFinalSaleProducts)
    }
}

struct FinalSaleScroll_Previews: PreviewProvider {
    static var previews: some View {
        FinalSaleScroll()
            .environmentObject(UserManager())
    }
}
