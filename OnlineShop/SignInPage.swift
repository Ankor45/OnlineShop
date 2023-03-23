//
//  SignInPage.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 23.03.2023.
//

import SwiftUI

struct SignInPage: View {
   
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var eMail: String = ""
    
    var body: some View {
        VStack {
            Text("Sign in")
                .font(.custom("Montserrat SemiBold", size: 28))
            
            VStack {
                UserTextField(value: $name, placeholder: "First name")
                    .padding()
                UserTextField(value: $surname, placeholder: "Last name")
                    .padding()
                UserTextField(value: $eMail, placeholder: "Email")
                    .padding()
            } .padding()
           
            Button(action: {}) {
                Text("Sign in").padding()
                    .font(.custom("Montserrat Bold", fixedSize: 16))
                    .frame(width: 300, height: 50)
                    .background(Color(.systemIndigo))
                    .foregroundColor(.white)
                    .cornerRadius(16)
            }
            HStack {
                Text("Already have an account?")
                    .font(.custom("Montserrat Regular", size: 12))
                    .foregroundColor(.gray)
                
                Button(action: {}) {
                    Text("Log in")
                        .font(.custom("Montserrat Regular", size: 12))
                }
            }.offset(x: -45, y: 0)
            
            
            VStack {
                AuthenticationView(serviceLogo: "Google", serviceName: "Sign in with Google")
                    .padding()
                AuthenticationView(serviceLogo: "Apple", serviceName: "Sign in with Apple")
                    .offset(x: -2, y: 0)
            }
        }
    }
}

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}
