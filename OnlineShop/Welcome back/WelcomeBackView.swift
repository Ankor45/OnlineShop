//
//  WelcomeBackView.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 23.03.2023.
//

import SwiftUI

struct WelcomeBackView: View {
    
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    @State private var password = ""
    @State private var showPassword: Bool = false
    @State private var alertPresented: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("Welcome back")
                .font(.custom("Montserrat SemiBold", size: 28))
                .padding(40)
            
            UserTextField(value: $name, placeholder: "First Name")
            
            ZStack {
                HStack {
                    Group {
                        
                        if self.showPassword {
                            UserTextField(value: self.$password, placeholder: "Password")
                                .offset(x:17, y: 0)
                        } else {
                            SecureField ("Password", text: self.$password, prompt: Text("Password") .font(.custom("Montserrat Regular", size: 14))
                            )
                            .ourStyle()
                            .navigationBarBackButtonHidden()
                            .offset(x:17, y: 0)
                        }
                        Button(action: {
                            self.showPassword.toggle()
                        }) {
                            Image(systemName: self.showPassword ? "eye" : "eye.slash").foregroundColor(.gray)
                            
                        }.offset(x: -24, y: 0)
                    }
                }.padding(20)
            }.padding(20)
            
            Button(action: openTabBar) {
                Text("Login").padding()
                    .font(.custom("Montserrat Bold", fixedSize: 16))
                    .frame(width: 300, height: 50)
                    .background(Color(.systemIndigo))
                    .foregroundColor(.white)
                    .cornerRadius(16)
            }
            .alert(isPresented: $alertPresented) {
                Alert(title: Text("Oops"), message: Text("Wrong Login/Password"))
            }
        }
    }
    private func openTabBar() {
        if !name.isEmpty && !password.isEmpty && user.name.contains(name) {
            user.openTabBar.toggle()
        } else {
            alertPresented.toggle()
        }
        return
    }
}

struct WelcomeBackView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackView()
    }
}

extension SecureField {
    func ourStyle() -> some View {
        ModifiedContent(content: self, modifier: TextFieldStyle())
        
    }
}
