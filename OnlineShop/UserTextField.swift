//
//  UserTextField.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 21.03.2023.
//

import SwiftUI

struct UserTextField: View {
    
   // @State private var shouldShow: Bool = true
    @Binding var value: String
    
    let placeholder: String
    
    var body: some View {
        TextField(
            "Placeholder",
            text: $value,
            prompt: Text("\(placeholder)")
                .font(.custom("Montserrat Regular", size: 14))
        )
        .ourStyle()
    }
}

struct UserTextField_Previews: PreviewProvider {
    static var previews: some View {
        UserTextField(value: .constant(""), placeholder: "Placeholder")
    }
}

struct TextFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .frame(width: 300,height: 30)
            .background(Color.gray.opacity(0.25))
            .cornerRadius(14)
    }
}

extension TextField {
    func ourStyle() -> some View {
        ModifiedContent(content: self, modifier: TextFieldStyle())
        
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
