//
//  CustomButton.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/22/21.
//

import SwiftUI

struct CustomButton: View {
    var buttonText : String
    var body: some View {
        
        
        Button("Never"){
            
            
        }
        .padding()
        .frame(width: 200, height: 50, alignment: .center)
        .background(Color("NavyBlue"))
        .clipShape(Capsule())
        .font(.system(size: 25))
        .foregroundColor(.white)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonText: "test")
    }
}
