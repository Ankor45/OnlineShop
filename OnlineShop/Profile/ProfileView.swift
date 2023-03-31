//
//  ProfileView.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 27.03.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var user: UserManager
    @Binding var selectTab: String
    @State private var profilePhoto = "Avatar"
    @State private var profileName = "Satria Abhi Paradana"
    
    var body: some View {
        
        VStack {
            Group {
                HStack {
                    ZStack {
                        
                        Button {
                            
                            goBack()
                            
                        } label: {
                            Image(systemName: "arrow.left")
                                .bold()
                                .foregroundColor(.black)
                        }
                        .offset(x: -160)
                        
                        Text("Profile")
                            .font(.custom("Montserrat SemiBold", size: 22))
                    }
                }
                .padding(1)
                
                VStack {
                    Image("\(profilePhoto)")
                    
                    Button(action: {}) {
                        Text("Change photo")
                            .font(.custom("Montserrat Regular", size: 12))
                            .foregroundColor(.gray)
                    }
                } .padding(1)
                
                Text("\(profileName)")
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
            } .padding(1)
            
            VStack {
                
                ProfileButton(buttonIcon: "CardIcon", buttonText: "Trade store", buttonSecondIcon: "Chevron", buttonAction: {})
                ProfileButton(buttonIcon: "CardIcon", buttonText: "Payment metod", buttonSecondIcon: "Chevron", buttonAction: {})
                ProfileButton(buttonIcon: "CardIcon", buttonText: "Balance", buttonSecondIcon: "Chevron", buttonAction: {})
                ProfileButton(buttonIcon: "CardIcon", buttonText: "Trade history", buttonSecondIcon: "CashIco", buttonAction: {})
                ProfileButton(buttonIcon: "RestoreIcon", buttonText: "Restore Purchase", buttonSecondIcon: "Chevron", buttonAction: {})
                ProfileButton(buttonIcon: "HelpIco", buttonText: "Help", buttonSecondIcon: "", buttonAction: {})
                ProfileButton(buttonIcon: "LogOutIco", buttonText: "Log out", buttonSecondIcon: "", buttonAction: logOut)
                Spacer()
            }
            .padding()
        }
        .padding(1)
        .scaledToFit()
    }
    
    private func logOut() {
        user.openTabBar.toggle()
        if user.isRegister {
            user.isRegister.toggle()
        }
    }
    
    private func goBack() {
        selectTab = "HomeIco"
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(selectTab: .constant(""))
    }
}
