//
//  Questions.swift
//  Pompam
//
//  Created by hendra on 31/03/24.
//

import Foundation

struct Questions: Identifiable, Codable, Hashable {
    var id: Int?
    var stageId: Int?
    var questionType: String
    var question: String
    var url: String
    var isActive: Bool
}
