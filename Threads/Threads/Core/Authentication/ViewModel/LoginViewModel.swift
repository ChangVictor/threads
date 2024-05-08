//
//  LoginViewModel.swift
//  Threads
//
//  Created by Victor Chang on 08/05/2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
