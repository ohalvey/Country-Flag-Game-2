//
//  AnswerRow.swift
//  Country Flag Game 2
//
//  Created by Oliver Halvey on 1/10/23.
//

import SwiftUI

struct AnswerRow: View {
    @EnvironmentObject var quizManager: QuizManager
    var Answer: Answer
    @State private var isSelected = false
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.Fill")
                .font(.caption)
            Text(Answer.text)
                .font(.title)
            if isSelected {
                Spacer()
                Image(systemName: Answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(Answer.isCorrect ? .green : .red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (Answer.isCorrect ? .green : .red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !quizManager.answerSelected {
                isSelected = true
                quizManager.selectAnswer(answer: Answer)
            }
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(Answer: Answer(text: "Test", isCorrect: true))
    }
}

