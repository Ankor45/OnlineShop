//
//  LatestProduct.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 29.03.2023.
//

import SwiftUI

struct LatestProduct: View {
    
    let product: Latest
    var body: some View {
        
        HStack {
          
            ZStack {
                
                AsyncImage(url: URL(string: product.image_url)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(14)
                } placeholder: {
                    ZStack {
                        Color.gray
                        
                        Image(systemName: "nosign")
                            .resizable()
                            .frame(width: 150, height: 150)
                    }
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 10) {

                        Button(action: {}) {
                            Text("\(product.category)")
                                .font(.custom("Montserrat SemiBold", fixedSize: 7))
                                .padding(.leading,7)
                                .padding(.trailing,7)
                                .background(Color(.systemGray).opacity(0.9))
                                .foregroundColor(.black)
                                .cornerRadius(26)
                            
                        }
                        
                        
                        Text("\(product.name)")
                            .padding(.leading,7)
                            .padding(.trailing,7)
                            .font(.custom("Montserrat Bold", fixedSize: 9))
                            .foregroundColor(.white.opacity(0.8))
                            .multilineTextAlignment(.leading)
                            .background(Color.gray.opacity(0.7))
                            .cornerRadius(10)
                            
                    }
                    
                    HStack {
                        Label {
                            Text("\(product.price)  ")
                                .font(.custom("Montserrat Bold", fixedSize: 8))
                        } icon: {
                            
                            Image(systemName: "dollarsign")
                                .resizable()
                                .frame(width: 5,height: 10)
                                .padding(.leading, 5)
                        }
                        .foregroundColor(.white.opacity(0.8))
                        .background(Color.gray.opacity(0.7))
                        
                        .cornerRadius(10)
                        
                        Spacer()
                        Button(action: {}) {
                            
                            Image("plusIco")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                    }
                } .padding(.horizontal, 4)
                    .padding(.bottom, 4)
            } // ZStack
            .scaledToFit()
            .frame(height: 140)
            
        .cornerRadius(20)
        }
    }
}

struct LatestProduct_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            LatestProduct(product: .init(
                category: "Phones",
                name: "Samsung S10",
                price: 1000,
            image_url: "https://avatars.mds.yandex.net/get-mpic/6251774/img_id4273297770790914968.jpeg/orig"))
        }
    }
}
