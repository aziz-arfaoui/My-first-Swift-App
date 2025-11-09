//
//  ContentView.swift
//  CoffeeManager
//
//  Created by Aziz Arfaoui on 5/11/2025.
//

import SwiftUI

struct LoginView: View {
    
    @State private var age: Int = 15

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)

            Text(category(for: age))
        }
        .padding()
    }
}

func category(for age: Int) -> String {
    age < 18 ? "minor" : "adult"
}


#Preview {
    LoginView()
}
