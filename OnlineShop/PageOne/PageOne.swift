//
//  Page1.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 27.03.2023.
//

import SwiftUI

struct PageOne: View {
    
    @State private var avatar = "Avatar"
    
    var body: some View {
        
        ZStack {
            
            Color("Bacground")
                .ignoresSafeArea()
            
            VStack {
                
                NavigationPageOne(profilePhoto: $avatar)
                
                CategoryScroll()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        CategoryViewAll(category: "Latest")
                        
                        LatestScroll()
                        
                        CategoryViewAll(category: "Flash sale")
                        
                        FinalSaleScroll()
                        
                        CategoryViewAll(category: "Brands")
                        
                        BrandScroll()
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

struct PageOne_Previews: PreviewProvider {
    static var previews: some View {
        PageOne()
    }
}

struct CategoryViewAll: View {
    
    let category: String
    
    var body: some View {
        HStack() {
            
            Text(category)
                .font(.custom("Montserrat SemiBold", size: 22))
            Spacer()
            
            Button(action: {}) {
                Text("View all")
                    .font(.custom("Montserrat Regular", size: 12))
                    .foregroundColor(.gray)
            }
            
        }.padding(10)
    }
}
