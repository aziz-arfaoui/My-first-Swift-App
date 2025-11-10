//
//  AuthService.swift
//  CoffeeManager
//
//  Created by Aziz Arfaoui on 9/11/2025.
//


import Foundation

class AuthService {
    // dummy in-memory users
    private let users: [User] = [
        User(id: UUID(), name: "Aziz", email: "aziz@example.com")
    ]
    
    func login(email: String, password: String) -> Bool {
        // dummy logic: succeed if email contains "@" and password == "1234"
        return users.contains(where: { $0.email == email }) && password == "1234"
    }
}
