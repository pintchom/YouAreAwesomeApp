//
//  ContentView.swift
//  YouAreAwesomeApp
//
//  Created by Max Pintchouk on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var titleText = ["When the genius bar needs help they need you", "You are Great!", "You are Awesome!"]
    @State private var index = 0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(titleText[index])
                .font(.largeTitle)
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 1)
                .padding()
            
            Spacer()
            Spacer()
            
            HStack {
                Button("Great") {
                    index = 1
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("Awesome") {
                    index = 2
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.orange, width: 5)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
