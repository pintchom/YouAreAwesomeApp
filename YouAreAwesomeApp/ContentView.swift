//
//  ContentView.swift
//  YouAreAwesomeApp
//
//  Created by Max Pintchouk on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var titleText = ["You are Awesome!", "You are Great!"]
    @State private var index = 0
    
    var body: some View {
        VStack {

            Text(titleText[index])
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .padding()
            Button("Press Me!") {
                if index == 0 {
                    index = 1
                } else {
                    index = 0
                }
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
