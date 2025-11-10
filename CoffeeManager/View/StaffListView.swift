//
//  StaffListView.swift
//  CoffeeManager
//
//  Created by Aziz Arfaoui on 10/11/2025.
//


import SwiftUI

struct StaffListView: View {
    @StateObject private var viewModel = StaffViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.staffList) { staff in
                VStack(alignment: .leading) {
                    Text(staff.fullName)
                        .font(.headline)
                    Text("\(staff.role) • \(staff.status)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Staff")
        }
    }
}

struct StaffListView_Previews: PreviewProvider {
    static var previews: some View {
        StaffListView()
    }
}
