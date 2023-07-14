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
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack {
                
                VStack {
                    
                    Spacer()
                    
                    Image(systemName: "figure.mind.and.body")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.pink)
                    
                    
                    Text(titleText[index])
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.red)
                        .frame(height: 150)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
