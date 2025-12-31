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
            
            Text("This Week's Winner is: Eagly")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .frame(height: 100)
                .frame(maxWidth: .infinity)
            Spacer()
            Spacer()
            
            Text("This Week's Posters Are:")
                .font(.largeTitle)
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .frame(height: 100)
                .frame(maxWidth: .infinity)
//            Text("No Posters This Week")
            Text("Chris, Ads, Eagly, Rip, Emilia")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .frame(height: 100)
                .frame(maxWidth: .infinity)
            
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
