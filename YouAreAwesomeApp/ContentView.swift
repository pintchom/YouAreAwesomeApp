//
//  ContentView.swift
//  YouAreAwesomeApp
//
//  Created by Max Pintchouk on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var titleText = ["Hey There!", "You are Great!", "You are Awesome!"]
    @State private var index = 0
    
    var body: some View {
        VStack {

            Text(titleText[index])
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
                .padding()
                .frame(width: 300, height: 150)
                .border(.orange, width: 1)
            
            HStack {
                Button("Great") {
                    index = 1
                }
                .buttonStyle(.borderedProminent)
            Button("Awesome") {
                index = 2
            }
            .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
