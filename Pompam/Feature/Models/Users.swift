//
//  Users.swift
//  Pompam
//
//  Created by hendra on 31/03/24.
//

import Foundation

struct Users: Identifiable, Codable, Hashable {
    var id: Int?
    let name: String
    let username: String
    let email: String
    let password: String
}
