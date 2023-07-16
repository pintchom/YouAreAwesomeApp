//
//  ContentView.swift
//  YouAreAwesomeApp
//
//  Created by Max Pintchouk on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    var person = "Limor"
    
    switch person {
    case "Limor": print("Hello, Lady Ada!")
    case "Grace":  print("Hello, Admiral Hopper!")
    case "Beyonce": print ("All Hail Queen B!")
    default: print("Hello there, \(person)")
    }
    
    @State private var titleText = ["", "You are Great!", "You are Awesome!"]
    @State private var index = 0
    @State private var speakerVolume = 0.0
    
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
