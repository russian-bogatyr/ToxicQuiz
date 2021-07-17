//
//  QuizPage.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/16/21.
//

import SwiftUI

struct QuizPage: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Text("Here will be quiz question")
                    .padding()
                Spacer()
                Button("Never"){
                    
                }
                .padding()
                
                Button("Sometimes"){
                    
                }
                .padding()
                
                Button("Usually"){
                    
                }
                .padding()
                
                Button("Always"){
                    
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct QuizPage_Previews: PreviewProvider {
    static var previews: some View {
        QuizPage()
    }
}
