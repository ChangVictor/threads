//
//  CreateThreadViewModel.swift
//  Threads
//
//  Created by Victor Chang on 12/06/2024.
//

import Foundation
import Firebase

class CreateThreadViewModel: ObservableObject {
    @Published var caption = ""
    
    func uploadThread(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let thread = Thread(ownerUid: uid, caption: caption, timastamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
