//
//  ContentView.swift
//  YouAreAwesomeApp
//
//  Created by Max Pintchouk on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding()
                .background(.gray)
                .foregroundColor(.orange)
            Text("You Are Awesome!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
                .padding()
                .background(.gray)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
