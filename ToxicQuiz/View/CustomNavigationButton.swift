//
//  CustomNavigationButton.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/22/21.
//

import SwiftUI

struct CustomNavigationButton: View {
    var viewToShow: AnyView
    var buttonTitle: String
    var body: some View {
        
        NavigationLink(destination: viewToShow) {
            Text(buttonTitle)
                .frame(width: 200, height: 25, alignment: .center)
                .font(.system(size: 25))
        }
        .foregroundColor(Color.white)
        .padding()
        .background(Color("NavyBlue"))
        .clipShape(Capsule())
        
        
    }
}

struct CustomNavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationButton(viewToShow: AnyView(BlankView()), buttonTitle: "Results")
    }
}
