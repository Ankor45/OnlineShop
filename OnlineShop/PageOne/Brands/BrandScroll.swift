//
//  BrandScroll.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 30.03.2023.
//

import SwiftUI

struct BrandScroll: View {
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 10) {
                
                ForEach(brands) { brand in
                    
                    VStack() {
                        
                        Button(action: {}) {
                            
                            ZStack {
                                
                                Image(brand.image)
                                    .padding(.horizontal,8)
                                
                                Text(brand.title)
                                    .font(.custom("Montserrat SemiBold", fixedSize: 14))
                                    .padding(.leading,7)
                                    .padding(.trailing,7)
                                    .background(Color(.systemGray).opacity(0.9))
                                    .foregroundColor(.black)
                                    .cornerRadius(26)
                                    .padding(.trailing, 40)
                                    .padding(.bottom, 90)
                                
                            }
                        }
                    }
                }
            }
        }.padding(.vertical,10)
    }
}


struct BrandScroll_Previews: PreviewProvider {
    static var previews: some View {
        BrandScroll()
    }
}
