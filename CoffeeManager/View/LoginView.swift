import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var message = ""

    let authService = AuthService()

    var body: some View {
        VStack(spacing: 20) {
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none)
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            Button("Login") {
                if authService.login(email: email, password: password) {
                    message = "Login successful!"
                } else {
                    message = "Invalid credentials"
                }
            }
            Text(message)
                .foregroundColor(message == "Login successful!" ? .green : .red)
        }
        .padding()
    }
}
