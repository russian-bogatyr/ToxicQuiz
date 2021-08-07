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
            LinearGradient(gradient: Gradient(colors: [Color("BlueGrotto"),Color("Spearmint")]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
                
            VStack{
                Spacer()
                VStack{
                    Text("20/20")
                        .frame(width: 50, height: 25, alignment:.topLeading)
                    Text(quizBrain.getQuestionText())
                        .frame(width: UIScreen.main.bounds.size.width - 35, height: 200, alignment: .leading)
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                        .lineSpacing(15.0)
                    
                    
                    
                }
                .padding()
                
                
                
                VStack(alignment: .center, spacing: 20){
                    
                    CustomNavigationButton(viewToShow: AnyView(ResultPage(result: quizBrain.getResults())), buttonTitle: "Results")
                        .opacity(quizBrain.isEnabled ? 1 : 0)
                    
                    
                    Button("Never"){
                        quizBrain.addScore(score: 1)
                        quizBrain.nextQuestion()
                        
                    }
                    .padding()
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color("NavyBlue"))
                    .clipShape(Capsule())
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    
                    
                    
                    Button("Sometimes"){
                        quizBrain.addScore(score: 2)
                        quizBrain.nextQuestion()
                    }
                    .padding()
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color("NavyBlue"))
                    .clipShape(Capsule())
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    
                    Button("Usually"){
                        quizBrain.addScore(score: 3)
                        quizBrain.nextQuestion()
                    }
                    .padding()
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color("NavyBlue"))
                    .clipShape(Capsule())
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    
                    Button("Always"){
                        quizBrain.addScore(score: 4)
                        quizBrain.nextQuestion()
                    }
                    .padding()
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color("NavyBlue"))
                    .clipShape(Capsule())
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    
                    
                    
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
