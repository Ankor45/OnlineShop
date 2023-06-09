//
//  SignInPage.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 23.03.2023.
//

import SwiftUI

struct SignInPage: View {
    
    @EnvironmentObject var user: UserManager
    
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var eMail: String = ""
    @State private var alertPresented: Bool = false
    @State private var isThisEmail: Bool = true
    
    var body: some View {
        VStack {
            Text("Sign in")
                .font(.custom("Montserrat SemiBold", size: 28))
            
            VStack {
                UserTextField(value: $name, placeholder: "First name")
                    .padding()
                
                UserTextField(value: $surname, placeholder: "Last name")
                    .padding()
                TextField(
                    "",
                    text: $eMail,
                    onEditingChanged: { isChanged in
                    if !isChanged {
                        if self.emailValidator(eMail) {
                            self.isThisEmail = true
                        } else {
                            self.isThisEmail = false
                            
                        }
                    }
                })
                .ourStyle()
                .foregroundColor(.black)
                .placeholder(when: eMail.isEmpty, placeholder: {
                    Text("Email")
                        .font(.custom("Montserrat Regular", size: 14))
                        .foregroundColor(.gray.opacity(0.6))
                        .offset(x: +132, y: 0)
                }) .padding()
                    .onSubmit {
                        if !isThisEmail {
                            eMail = ""
                        }
                    }
                
                if !self.isThisEmail {
                    
                    Text("Enter email")
                        .font(.custom("Montserrat Regular", size: 14))
                        .foregroundColor(.red)
                }
            } .padding()
            
            Button(action: registerUser) {
                
                Text("Sign in").padding()
                    .font(.custom("Montserrat Bold", fixedSize: 16))
                    .frame(width: 300, height: 50)
                    .background(Color(.systemIndigo))
                    .foregroundColor(.white)
                    .cornerRadius(16)
            }
            .alert(isPresented: $alertPresented) {
                Alert(title: Text("Oops"), message: Text("This email is already registered"))
            }
            
            HStack {
                Text("Already have an account?")
                    .font(.custom("Montserrat Regular", size: 12))
                    .foregroundColor(.gray)
                
                Button(action: loginIsOn) {
                    Text("Log in")
                        .font(.custom("Montserrat Regular", size: 12))
                    
                }
            }.offset(x: -45, y: 0)
            
            
            VStack {
                AuthenticationLabel(serviceLogo: "Google", serviceName: "Sign in with Google")
                    .padding()
                AuthenticationLabel(serviceLogo: "Apple", serviceName: "Sign in with Apple")
                    .offset(x: -2, y: 0)
            }
            .padding(.top, 40)
            Spacer()
        }
        .padding(.top, 50)
    } // Body
    private func registerUser() {
        
        guard !user.eMail.contains(eMail) else {
            alertPresented.toggle()
            return
        }
        
        
        if !name.isEmpty && !surname.isEmpty && !eMail.isEmpty && isThisEmail  {
            
            user.name.append(name)
            user.eMail.append(eMail)
            
            user.openTabBar.toggle()
            
        }
    }
    
    private func loginIsOn() {
        user.isRegister.toggle()
    }
    
  private func emailValidator(_ string: String) -> Bool {
        if string.count > 50 {
            return false
        }
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: string)
    }
}

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}
