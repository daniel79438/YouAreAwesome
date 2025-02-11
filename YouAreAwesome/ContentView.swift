//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Daniel Harris on 21/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var messageNumber = 0
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
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Show message") {
                let messages = ["You Are Awesome",
                                "You Are Great!",
                                "You Are Fantastic!",
                                "Fabulous, That's You!",
                                "You Make Me Smile!",
                                "When the Genius Bar Needs Help, They Call You!"]
                
                
                message = messages[messageNumber]
                messageNumber += 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                
                imageName = "image\(imageNumber)"
                
                
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                    
                    
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

