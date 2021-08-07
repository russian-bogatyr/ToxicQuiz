//
//  Instructions.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 8/7/21.
//

import SwiftUI

struct Instructions: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("BlueGrotto"),Color("Spearmint")]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            Text("  Determine how much you agree or disagree with the statements below using the following scale: \n - I completely agree \n - I agree \n - I disagree \n - I absolutely disagree \n\n  Answer without thinking too long about each statement, usually the first answer that comes to mind is the most accurate. The results obtained are not a diagnosis and may be situational. If the test results are high, they should be repeated after a while, and in the case of a repeated high result, contact a specialist.")
                .frame(width: UIScreen.main.bounds.size.width - 45, height: UIScreen.main.bounds.size.height - 300, alignment: .leading)
                .font(.system(size: 250))
                .minimumScaleFactor(0.01)
                .foregroundColor(.black)
                .lineSpacing(13.0)
            
            
        }
        
    }
}


struct Instructions_Previews: PreviewProvider {
    static var previews: some View {
        Instructions()
    }
}
