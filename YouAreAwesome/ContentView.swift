//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Daniel Harris on 21/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var messages = [" ", "Fabulous, That's You!", "You are Amazing!"]
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(messages[0])
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Show message") {
                
               
             imageName = "image" + String(imageNumber)
                
            imageNumber += 1
                print(messages)
                
                if imageNumber > 9 {
                    imageNumber = 0
                    messages[0]
                    
                }
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .foregroundStyle(.white)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

