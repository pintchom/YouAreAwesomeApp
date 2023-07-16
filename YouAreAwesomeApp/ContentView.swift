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
    @State private var imageNum = 0
    @State private var imageList = ["image2", "image3", "image4", "image5", "image6", "image8","image9"]
    @State private var image = ""
    
    var body: some View {
        
        GeometryReader { geo in
            
            VStack {
                
                Spacer()
                
                Image(image)
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
                        
                        image = imageList[imageNum]
                        imageNum = imageNum < 6 ? imageNum + 1: 0
                        
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
