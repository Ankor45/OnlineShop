//
//  SwiftUIView.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 28.03.2023.
//

import SwiftUI

struct NavigationPageOne: View {
    
    @State private var searchText = ""
    @Binding var profilePhoto: String
    @Binding var selectTab: String
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button(action: {}) {
                    Image("MenuButton")
                }
                
                Spacer()
                
                VStack {
                    
                    Button(action: {
                        goProfile()
                    }) {
                        Image("\(profilePhoto)")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .overlay( Circle().stroke(Color.black, lineWidth: 1.5))
                    }
                    
                    HStack {
                        
                        Text("Location")
                            .font(.custom("Montserrat Regular", size: 12))
                            .foregroundColor(.gray)
                        Image(systemName: "chevron.down")
                            .resizable()
                            .frame(width: 8, height: 5)
                    }
                } // VStack
            } // HStack
            .overlay (
                HStack(spacing: 4, content: {
                    Text("Trade by")
                        .font(.custom("Montserrat Bold", fixedSize: 20))
                    Text("bata")
                        .font(.custom("Montserrat Bold", fixedSize: 20))
                        .foregroundColor(.indigo)
                })
            )
            .padding()
            
            ZStack {
                HStack {
                    
                    UserTextField(value: $searchText, placeholder: "What are you looking for ?")
                        .onSubmit {
                            searchText = ""
                        }
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.gray)
                        .offset(x: -40)
                }
            }
        } .padding(.top, 2)// VStack
    } // Body
    
    private func goProfile() {
        selectTab = "ProfileIco"
    }
}

struct NavigationPageOne_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPageOne(profilePhoto: .constant("Avatar"), selectTab: .constant(""))
    }
}
