//
//  ProfileThreadFilter.swift
//  Threads
//
//  Created by Victor Chang on 27/04/2024.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable, Equatable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    
    var id: Int { return self.rawValue }
    
}
