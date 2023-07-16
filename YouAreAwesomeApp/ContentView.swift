//
//  ContentView.swift
//  YouAreAwesomeApp
//
//  Created by Max Pintchouk on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    let person = "Limor"
    
    let result = (person == "Limor" ? "Hello, lady Ada!" : "Hello there!")
    print(result)
    
    
    
    var body: some View {
        
        GeometryReader { geo in
            
            VStack {
                
                Spacer()
                
                
                Text(titleText[index])
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.red)
                    .frame(height: 75)
                    .frame(maxWidth: .infinity)
                
                
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
                .tint(Color("Vermillion"))
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
