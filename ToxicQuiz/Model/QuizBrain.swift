//
//  QuizBrain.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/16/21.
//

import Foundation


struct QuizBrain {
    
    var isEnabled = false
    var questionNumber = 0
    var quizScore = 0
    var result = "Please finish the quiz to see your result"
    
    let quiz = [
        Question(q: "I tend take responsibility for the feelings and / or behavior of others"),
        Question(q: "I find it difficult to identify my feelings, such as happiness, anger, embarrassment, discouragement, or excitement"),
        Question(q: "I find it hard to express my feelings"),
        Question(q: "I feel fear or anxiety at the thought of how others will react to my feelings or behavior"),
        Question(q: "I minimize problems and deny or change the truth about the feelings or behavior of the people with whom I communicate"),
        Question(q: "I find it difficult to establish or maintain close relationships."),
        Question(q: "I am afraid of being rejected "),
        Question(q: "I try to achieve perfection in everything and judge myself strictly"),
        Question(q: "I find it difficult to make decisions"),
        Question(q: "I tend to rely on the opinions of others, rather than act on my own"),
        Question(q: "I tend to put the wants and needs of other people in the forefront"),
        Question(q: "I am inclined to value the opinion of other people above my own"),
        Question(q: "My self-esteem comes from the outside, depending on the opinions or actions of other people, who, I think, understand more about this"),
        Question(q: "I find it hard to be vulnerable and ask for help."),
        Question(q: "I am always controlled or strive to control, and vice versa, always making sure that I never be responsible (controlling)"),
        Question(q: "I am too loyal (kind) to others, even when this kindness (loyalty) is not justified"),
        Question(q: "I have a habit of looking at situations on an all-or-nothing basis"),
        Question(q: "I am very tolerant (able to tolerate) inconsistency and mixed assignments"),
        Question(q: "Emotional crises and chaos occur in my life"),
        Question(q: "I try to look for relationships where I feel needed, and then try to maintain them.")
    ]
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else{
            calculateResult()
            enableButton()
        }
        
        
    }
    
    mutating func addScore(score: Int){
        if questionNumber + 1 < quiz.count {
            quizScore += score
        }
    }
    
    func getResults() -> String {
        return result
    }
    
    mutating func calculateResult() {
        if quizScore <= 25 {
            result = "no toxic"
        }
        else if quizScore <= 40 {
            result = "slightly toxic"
        }
        else if quizScore <= 60 {
            result = "medium toxic"
        }
        else{
            result = "high toxic"
        }
        
    }
    mutating func enableButton() {
        isEnabled = true
        
    }
    
    
}


