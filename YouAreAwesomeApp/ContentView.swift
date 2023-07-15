//
//  ContentView.swift
//  YouAreAwesomeApp
//
//  Created by Max Pintchouk on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var titleText = ["Namaste", "You are Great!", "You are Awesome!"]
    @State private var index = 0
    @State private var speakerVolume = 0.0
    
    var body: some View {
        
        GeometryReader { geo in
            
            VStack {
                
                Spacer()
                
                Image(systemName: "speaker.wave.3", variableValue: speakerVolume)
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.multicolor)
                    .padding()
                    .background(Color(hue: 0.582, saturation: 0.354, brightness: 0.998))
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 40, x: 20, y: 20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color("SkyBlue"), lineWidth: 5)
                    )
 
                    
                
                Text(titleText[index])
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.red)
                    .frame(height: 75)
                    .frame(maxWidth: .infinity)
                
                HStack {
                    Button("-") {
                        if speakerVolume >= 0 {
                            speakerVolume -= 0.33
                        }
                    }
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Vermillion"))
                    .controlSize(.large)
                    
                    Button("+") {
                        if speakerVolume < 0.99 {
                            speakerVolume += 0.33
                        }
                    }
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Vermillion"))
                .controlSize(.large)
                }
                
                
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
