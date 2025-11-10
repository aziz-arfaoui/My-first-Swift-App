//
//  StaffViewModel.swift
//  CoffeeManager
//
//  Created by Aziz Arfaoui on 10/11/2025.
//


import SwiftUI
import Combine

class StaffViewModel: ObservableObject {
    @Published var staffList: [Staff] = []

    init() {
        loadStaff()
    }

    func loadStaff() {
        // Mock data for now
        staffList = [
            Staff(fullName: "Alice", role: "Barista", status: "Active"),
            Staff(fullName: "Bob", role: "Manager", status: "Active"),
            Staff(fullName: "Charlie", role: "Cashier", status: "Inactive")
        ]
    }

    func addStaff(_ staff: Staff) {
        staffList.append(staff)
    }
}
