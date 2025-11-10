//
//  Staff.swift
//  CoffeeManager
//
//  Created by Aziz Arfaoui on 10/11/2025.
//
import Foundation


struct Staff: Identifiable {
    let id: UUID = UUID()
    let fullName: String
    let role: String
    let status: String
}
