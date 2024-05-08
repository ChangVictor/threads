//
//  RegistrationViewModel.swift
//  Threads
//
//  Created by Victor Chang on 05/05/2024.
//

import Foundation

@MainActor
class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullname: fullname,
            username: username
        )
    }
}
