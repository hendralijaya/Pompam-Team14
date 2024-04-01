//
//  QuestionChoices.swift
//  Pompam
//
//  Created by hendra on 31/03/24.
//

import Foundation

struct QuestionChoices: Identifiable, Codable, Hashable {
    var id: Int?
    var stageId: Int?
    var questionId: Int?
    var isRightChoice: Bool
    var orderNumber: Int
    var explanation: String
    var score: Int
}
