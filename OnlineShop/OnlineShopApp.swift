//
//  OnlineShopApp.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 21.03.2023.
//

import SwiftUI

@main
struct OnlineShopApp: App {
    @StateObject private var user = UserManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(user)
        }
    }
}
