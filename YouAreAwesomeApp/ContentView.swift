//
//  ContentView.swift
//  YouAreAwesomeApp
//
//  Created by Max Pintchouk on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var titleText = ["You are Great!", "You are Awesome!"]
    @State private var index = 0
    @State private var speakerVolume = 0.0
    @State private var imageText = "image2"
    
    var body: some View {
        
        GeometryReader { geo in
            
            VStack {
                
                Spacer()
                
                Image(imageText)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                
                
                Text(titleText[index])
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.red)
                    .frame(height: 75)
                    .frame(maxWidth: .infinity)
                
                            
                HStack {
                    Button("Switch image") {
                        imageText = imageText == "image2" ? "image3" : "image2"
                    }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .font(.largeTitle)
                    
                    
                    
                }
                .tint(Color("Vermillion"))
                
                Spacer()
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
