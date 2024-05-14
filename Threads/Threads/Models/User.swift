//
//  User.swift
//  Threads
//
//  Created by Victor Chang on 08/05/2024.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
