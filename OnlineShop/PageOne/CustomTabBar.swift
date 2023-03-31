//
//  CustomTabBar.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 30.03.2023.
//

import SwiftUI

struct CustomTabBar: View {
    
    @State var selectTab = "HomeIco"
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    let tabs = ["HomeIco", "favoritesIco", "CartIco", "ChatIco", "ProfileIco"]
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            TabView(selection: $selectTab) {
                PageOne(selectTab: $selectTab)
                    .tag("HomeIco")
                    .tag("favoritesIco")
                    .tag("CartIco")
                    .tag("ChatIco")
                ProfileView(selectTab: $selectTab)
                    .tag("ProfileIco")
            }
            
            HStack {
                
                ForEach(tabs, id: \.self) { tab in
                    
                    TabBarButton(tab: tab, selected: $selectTab)
                        .padding(.bottom, 20)
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
    }
    
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}

struct TabBarButton: View {
    
    @State var tab: String
    @Binding var selected: String
    
    var body: some View {
        
        Button {
            withAnimation(.spring()) {
                selected = tab
            }
        } label: {
            Image(tab)
                .renderingMode(.template)
                .foregroundColor(selected == tab ? .indigo : .gray)
                .padding()
        }
        .background(selected == tab ? Color("ColorTabBarIco") : .white)
        .clipShape(Circle())
        .frame(width: 40, height: 40)
        .padding(.horizontal)
        .padding(.vertical)
    }
}
