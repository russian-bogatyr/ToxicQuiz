//
//  ContentView.swift
//  ToxicQuiz
//
//  Created by ANTON KISELEV on 7/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            NavigationView{
                VStack{
                    Text("APP NAME HERE")
                        .padding()
                    
                    NavigationLink(
                        destination: QuizPage(),
                        label: {
                            Text("Take a quiz")
                        })
                        .padding()
                    
                    NavigationLink(
                        destination: AboutPage(),
                        label: {
                            Text("About this app")
                        })
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
