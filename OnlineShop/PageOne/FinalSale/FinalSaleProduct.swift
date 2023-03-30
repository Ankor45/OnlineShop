//
//  FinalSaleProduct.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 30.03.2023.
//

import SwiftUI

struct FinalSaleProduct: View {
    
    let product: Products
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
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    HStack {
                        
                        Image("Seller")
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("\(product.discount)% off")
                                .font(.custom("Montserrat SemiBold", fixedSize: 14))
                                .padding(.leading,7)
                                .padding(.trailing,7)
                                .background(Color(.red).opacity(0.9))
                                .foregroundColor(.white)
                                .cornerRadius(26)
                            
                        }
                    } . padding(12)
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 6) {
                        
                        Button(action: {}) {
                            Text("\(product.category)")
                                .font(.custom("Montserrat SemiBold", fixedSize: 14))
                                .padding(.leading,7)
                                .padding(.trailing,7)
                                .background(Color(.systemGray).opacity(0.9))
                                .foregroundColor(.black)
                                .cornerRadius(26)
                            
                        }
                        
                        
                        Text("\(product.name)")
                            .padding(.leading,7)
                            .padding(.trailing,7)
                            .font(.custom("Montserrat Bold", fixedSize: 18))
                            .foregroundColor(.white.opacity(0.8))
                            .multilineTextAlignment(.leading)
                            .background(Color.gray.opacity(0.7))
                            .cornerRadius(10)
                        
                    }
                    
                    HStack {
                        Label {
                            Text("\(NSString(format: "%.1f", product.price ))  ")
                                .font(.custom("Montserrat Bold", fixedSize: 14))
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
                        HStack {
                            
                            Button(action: {}) {
                                
                                Image("heartIco")
                            }
                            
                            Button(action: {}) {
                                
                                Image("plusIco")
                                    .padding(.bottom, 0.7)
                            }
                        } .padding(.bottom, 10)
                    }
                } .padding(.horizontal, 10)
                    .padding(.vertical, 8)
            } // ZStack
            .scaledToFit()
            .frame(height: 180)
            
            .cornerRadius(20)
        }
    }
}


struct FinalSaleProduct_Previews: PreviewProvider {
    static var previews: some View {
        FinalSaleProduct(product: .init(
            category: "Kids",
            name: "New Balance Sneakers",
            price: 30.423,
            discount: 30,
            image_url: "https://newbalance.ru/upload/iblock/697/iz997hht_nb_02_i.jpg")
        )
    }
}
