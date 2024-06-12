//
//  Thread.swift
//  Threads
//
//  Created by Victor Chang on 12/06/2024.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct Thread: Identifiable, Codable {
    @DocumentID var threadId: String? 
    
    let ownerUid: String
    let caption: String
    let timastamp: Timestamp
    var likes: Int
    
    var id: String {
        return threadId ?? UUID().uuidString
    }
    
    var user: User?
}
