//
//  ContentView.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 21.03.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    var body: some View {
        
        if user.openTabBar {
            CustomTabBar()
        } else {
            
            Group {
                if user.isRegister {
                    WelcomeBackView()
                } else {
                    SignInPage()
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}


