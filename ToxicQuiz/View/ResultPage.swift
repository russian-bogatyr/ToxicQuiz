//
//  ResultPage.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/17/21.
//

import SwiftUI

struct ResultPage: View {
    
    var result: String
    
    var body: some View {

            ZStack{
                VStack{
                    Text(result)
                        .frame(width: UIScreen.main.bounds.size.width - 35, height: 150, alignment: .leading)
                }
            }
        
        
    }
}

struct ResultPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage(result: "Results here")
    }
}
