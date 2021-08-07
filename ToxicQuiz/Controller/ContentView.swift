//
//  ContentView.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color("BlueGrotto"),Color("Spearmint")]), startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()
                VStack{

                    Text("APP NAME HERE")
                        .padding()
                    
                    CustomNavigationButton(viewToShow: AnyView(QuizPage()), buttonTitle: "Take Quiz")
                        .padding()

                    CustomNavigationButton(viewToShow: AnyView(AboutPage()), buttonTitle: "About This App")
                        .padding()
                }
            }
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
