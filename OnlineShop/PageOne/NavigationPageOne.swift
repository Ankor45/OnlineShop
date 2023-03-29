//
//  SwiftUIView.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 28.03.2023.
//

import SwiftUI

struct NavigationPageOne: View {
    
    @Binding var profilePhoto: String
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button(action: {}) {
                    Image("MenuButton")
                }
                
                Spacer()
                
                VStack {
                    
                    Button(action: {}) {
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
            // MARK затычка потом поменяй
            UserTextField(value: $profilePhoto , placeholder: "Search")
                
            
            
        } // VStack
    } // Body
}

struct NavigationPageOne_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPageOne(profilePhoto: .constant("Avatar"))
    }
}
