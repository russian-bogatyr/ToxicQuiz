//
//  ResultPage.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/17/21.
//

import SwiftUI

struct ResultPage: View {
    
    var quizResult = QuizBrain().getResults()
    
    var body: some View {
        ZStack{
            VStack{
                Text(verbatim: quizResult)
            }
        }
    }
}

struct ResultPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage()
    }
}
