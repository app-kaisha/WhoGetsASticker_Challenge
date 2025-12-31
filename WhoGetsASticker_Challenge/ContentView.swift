//
//  ContentView.swift
//  WhoGetsASticker_Challenge
//
//  Created by app-kaihatsusha on 31/12/2025.
//  Copyright © 2025 app-kaihatsusha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text("Who Gets a Sticker?")
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack {
                Button("Clear") {
                    
                }
                .tint(.red)
                Spacer()
                Button("Pick a Winner") {
                    
                }
                .tint(.green)
            }
            .buttonStyle(.borderedProminent)
            
            Image("sticker")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            Text("This Week's Psters Are:")
                .font(.largeTitle)
                .fontWeight(.black)
            Text("No Posters This Week")
                .font(.largeTitle)
            
            HStack {
                TextField("enter name", text: $name)
                    .textFieldStyle(.roundedBorder)
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }

            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
