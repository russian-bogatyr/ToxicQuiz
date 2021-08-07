//
//  AboutPage.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/16/21.
//

import SwiftUI

struct AboutPage: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("BlueGrotto"),Color("Spearmint")]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            Text("The Codependency Self-Inventory Scale was developed in 1989 by psychologists Berry and Janey Winehold and was adapted by A.S. Kocharyan, E.V. Frolova N.A. Smakhtina in 2006. \nThe test allows you to assess the level of severity of codependency in a relationship. The questionnaire is widely used for research purposes and is popular with psychologists when conducting both group trainings and individual consultations.")
                .frame(width: UIScreen.main.bounds.size.width - 35, height: UIScreen.main.bounds.size.height - 200, alignment: .leading)
                .font(.system(size: 250))
                .minimumScaleFactor(0.01)
                .foregroundColor(.black)
                .lineSpacing(13.0)
            
        }
        
    }
}

struct AboutPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutPage()
    }
}
