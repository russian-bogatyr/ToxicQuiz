//
//  QuizPage.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/16/21.
//

import SwiftUI

struct QuizPage: View {
    
    var questionText = ""
    @State var disableButtons = false
    @State var quizBrain = QuizBrain()
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack{
                    Text(quizBrain.getQuestionText())
                        .frame(width: UIScreen.main.bounds.size.width - 25, height: 100, alignment: .leading)
                    Text(quizBrain.getResults())
                        
                        .frame(width: UIScreen.main.bounds.size.width - 25, height: 100, alignment: .leading)
                }
                
                Spacer()
                
                VStack{
                    Button("Never"){
                        quizBrain.addScore(quizAnswer: 1)
                        quizBrain.nextQuestion()
                        
                    }
                    .padding()
                    
                    Button("Sometimes"){
                        quizBrain.addScore(quizAnswer: 2)
                        quizBrain.nextQuestion()
                    }
                    .padding()
                    
                    Button("Usually"){
                        quizBrain.addScore(quizAnswer: 3)
                        quizBrain.nextQuestion()
                    }
                    .padding()
                    
                    Button("Always"){
                        quizBrain.addScore(quizAnswer: 4)
                        quizBrain.nextQuestion()
                    }
                    .padding()
                }
                
                Spacer()
            }
            
        }
    }
    
    
    
    struct QuizPage_Previews: PreviewProvider {
        static var previews: some View {
            QuizPage()
        }
    }
}
