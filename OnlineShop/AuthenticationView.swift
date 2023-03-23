//
//  AuthenticationView.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 23.03.2023.
//

import SwiftUI

struct AuthenticationView: View {
   
    let serviceLogo: String
    let serviceName: String
    
    var body: some View {
        HStack {
            Image("\(serviceLogo)")
                .padding(0.5)
            Text("\(serviceName)")
                .font(.custom("Montserrat Regular", size: 16))
            
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView(serviceLogo: "Name", serviceName: "Apple")
    }
}
