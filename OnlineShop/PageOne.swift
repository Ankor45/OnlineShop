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
        
        VStack {
        
            NavigationView(profilePhoto: $avatar)
            
            CategoryScroll()
            
            HStack() {
            
                Text("Latest")
                    .font(.custom("Montserrat SemiBold", size: 22))
                Spacer()
                
                Button(action: {}) {
                    Text("View all")
                        .font(.custom("Montserrat Regular", size: 12))
                        .foregroundColor(.gray)
                }
                
            }.padding()
            
            Spacer()
        }
    }
}

struct PageOne_Previews: PreviewProvider {
    static var previews: some View {
        PageOne()
    }
}
