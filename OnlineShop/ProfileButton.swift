//
//  ProfileButton.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 27.03.2023.
//

import SwiftUI

struct ProfileButton: View {
    
    let buttonIcon: String
    let buttonText: String
    let buttonSecondIcon: String
    
    var body: some View {
        
        
        Button(action: {}) {
            HStack {
                Image("\(buttonIcon)")
                    .padding()
                
                Text("\(buttonText)")
                    .font(.custom("Montserrat Medium", fixedSize: 18))
                    .foregroundColor(.black)
                Spacer()
                
                Image("\(buttonSecondIcon)")
                    .padding()
            } // HStack
            .frame(height: 50)
        } // Button
        
    }
}

struct ProfileButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButton(buttonIcon: "CardIcon", buttonText: "Button's text", buttonSecondIcon: "Chevron")
    }
}
