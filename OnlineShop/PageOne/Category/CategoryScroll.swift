//
//  ScrollPageOne.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 28.03.2023.
//

import SwiftUI

struct CategoryScroll: View {
    
    var body: some View {
                
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 15) {
                
                ForEach(categories){ category in
                    
                    HStack(spacing: 10) {
                        
                            
                            Button(action: {}) {
                                VStack {
                                
                                    Image(category.image)
                                        .padding(.horizontal,8)
                                    
                                Text(category.title)
                                    .font(.custom("Montserrat Regular", size: 10))
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
        }.padding(.vertical, 10)
    }
}

struct CategoreScroll_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScroll()
    }
}
