//
//  ContentView.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 21.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var password = ""
    @State private var showPassword: Bool = false
    
    var body: some View {
        VStack {
            Text("Welcome back")
                .font(.custom("Montserrat SemiBold", size: 28))
                .padding(40)
            
            UserTextField(value: $name, placeholder: "First Name")
                
            ZStack {
                
                HStack {
                    
                    if self.showPassword {
                        UserTextField(value: self.$password, placeholder: "Password")
                            .offset(x:17, y: 0)
                    } else {
                        SecureField ("Password", text: self.$password, prompt: Text("Password") .foregroundColor(.black.opacity(0.6))
                            .font(.custom("Montserrat Regular", size: 14))
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
                }.padding(20)
            }.padding(20)
            
            Button(action: {}) {
                Text("Login").padding()
                    .font(.custom("Montserrat Bold", fixedSize: 16))
                    .frame(width: 300, height: 50)
                    .background(Color(.systemIndigo))
                    .foregroundColor(.white)
                    .cornerRadius(16)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension SecureField {
    func ourStyle() -> some View {
        ModifiedContent(content: self, modifier: TextFieldStyle())
    }
}
