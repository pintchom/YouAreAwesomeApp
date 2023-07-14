//
//  ContentView.swift
//  YouAreAwesomeApp
//
//  Created by Max Pintchouk on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var titleText = ["When the genius bar needs help, they call you", "You are Great!", "You are Awesome!"]
    @State private var index = 0
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack {
                
                VStack {
                    
                    Group {
                        Text("More Text")
                        Text("More Text")
                        Text("More Text")
                        Text("More Text")
                        Text("More Text")// BREAKING POINT
                        Text("More Text")
                        Text("More Text")
                        Text("More Text")
                        Text("More Text")
                        Text("More Text")
                        // Text("More Text")// BREAKING POINT
                    }
                    
                    Spacer()
                    
                    Text(titleText[index])
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.red)
                        .frame(height: 150)
                        .frame(maxWidth: .infinity)
                    //                .border(Color("Maroon-BC"), width: 5)
                    
                    Spacer()
                    
                    Divider()
                        .background(.black)
                        .padding()
                        .frame(width: 150.0)
                    
                    Rectangle()
                        .fill(.indigo)
                        .frame(width: geo.size.width * (0.667), height: 1)
                    
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
