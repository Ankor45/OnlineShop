//
//  ProfileView.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 27.03.2023.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        VStack {
            Group {
                Text("Profile")
                    .font(.custom("Montserrat SemiBold", size: 22))
                
                VStack {
                    Image("Avatar")
                    
                    Button(action: {}) {
                        Text("Change photo")
                            .font(.custom("Montserrat Regular", size: 12))
                            .foregroundColor(.gray)
                    }
                } .padding(10)
                
                Text("Satria Abhi Paradana")
                    .font(.custom("Montserrat SemiBold", size: 18))
            } // Group
            Button(action: {}) {
                ZStack {
                    
                    Text("Upload item")
                        .font(.custom("Montserrat Bold", fixedSize: 18))
                        .frame(width: 334, height: 46)
                        .background(Color(.systemIndigo))
                        .foregroundColor(.white)
                        .cornerRadius(16)
                    
                    Image("UploadIcon")
                        .offset(x: -100, y: 0)
                }
            } .padding()
            VStack {
                
                ProfileButton(buttonIcon: "CardIcon", buttonText: "Trade store", buttonSecondIcon: "Chevron")
                ProfileButton(buttonIcon: "CardIcon", buttonText: "Payment metod", buttonSecondIcon: "Chevron")
                ProfileButton(buttonIcon: "CardIcon", buttonText: "Balance", buttonSecondIcon: "Chevron")
                ProfileButton(buttonIcon: "CardIcon", buttonText: "Trade history", buttonSecondIcon: "CashIco")
                ProfileButton(buttonIcon: "RestoreIcon", buttonText: "Restore Purchase", buttonSecondIcon: "Chevron")
                ProfileButton(buttonIcon: "HelpIco", buttonText: "Help", buttonSecondIcon: "")
                ProfileButton(buttonIcon: "LogOutIco", buttonText: "Log out", buttonSecondIcon: "")
               // Spacer()
            }
        } .padding()// VStack
    } //Body
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
