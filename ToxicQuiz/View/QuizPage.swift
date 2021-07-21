//
//  QuizPage.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/16/21.
//

import SwiftUI

struct QuizPage: View {
    

    @State var quizBrain = QuizBrain()
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack{
                    Text(quizBrain.getQuestionText())
                        .frame(width: UIScreen.main.bounds.size.width - 35, height: 200, alignment: .leading)
                        .font(.system(size: 25))
                    
                    
                    
                }
                .padding()
                
                NavigationLink(
                    destination: ResultPage(result: quizBrain.getResults()),
                    label: {
                        Text("Results")
                    })
                    .opacity(quizBrain.isEnabled ? 1 : 0)
                    .padding()
                
                VStack{
                    Button("Never"){
                        quizBrain.addScore(score: 1)
                        quizBrain.nextQuestion()
                        
                    }
                    .padding()
                    
                    Button("Sometimes"){
                        quizBrain.addScore(score: 2)
                        quizBrain.nextQuestion()
                    }
                    .padding()
                    
                    Button("Usually"){
                        quizBrain.addScore(score: 3)
                        quizBrain.nextQuestion()
                    }
                    .padding()
                    
                    Button("Always"){
                        quizBrain.addScore(score: 4)
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
