//
//  UserManager.swift
//  OnlineShop
//
//  Created by Andrei Kovryzhenko on 30.03.2023.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    @Published var openTabBar = false
    var name = ""
}
