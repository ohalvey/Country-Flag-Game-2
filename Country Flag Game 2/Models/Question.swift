//
//  Question.swift
//  Country Flag Game 2
//
//  Created by Oliver Halvey on 1/9/23.
//

import Foundation
struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}

struct Question: Identifiable {
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswers: [Answer]
}
