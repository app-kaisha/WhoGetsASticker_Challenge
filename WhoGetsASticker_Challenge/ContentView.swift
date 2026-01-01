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
    @State private var posterNames: [String] = []
    @State private var postersString = "No Posters This Week"
    @State private var winner = ""
    
    @FocusState private var textFieldIsFocused: Bool
    
    var body: some View {
        VStack {
            Text("Who Gets a Sticker?")
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack {
                Button("Clear") {
                    posterNames = []
                    postersString = "No Posters This Week"
                    winner = ""
                }
                .tint(posterNames.isEmpty ? .gray.opacity(0.5) : .red)
                Spacer()
                Button("Pick a Winner") {
                    guard let posterWinner = posterNames.randomElement() else {
                        return
                    }
                    winner = posterWinner
                }
                .tint(posterNames.isEmpty ? .gray.opacity(0.5) : .green)
            }
            .buttonStyle(.borderedProminent)
            
            Image("sticker")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 40)
            
            Text(!winner.isEmpty ? "This Week's Winner is: \(winner)" : "")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .frame(height: 100)
                .frame(maxWidth: .infinity)
            Spacer()
            
            Text("This Week's Posters Are:")
                .font(.largeTitle)
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
            Text(postersString)
                .font(.largeTitle)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
            
            HStack {
                TextField("enter name", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .focused($textFieldIsFocused)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.gray, lineWidth: 1)
                    }
                    .submitLabel(.done)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.words)
                    .onChange(of: name){
                        // only allow characters to be typed into field
                        name = name.trimmingCharacters(in: .letters.inverted)
                    }
                    .onSubmit {
                        // protect against zero entry
                        guard name != "" else { return }
                    }
                
                Button {
                    updatePosterNames()
                } label: {
                    Image(systemName: "plus")
                }
                .disabled(name.isEmpty)

            }
            
        }
        .padding()
    }
    
    
    func updatePosterNames() {
        textFieldIsFocused = false
        posterNames.append(name)
        name = ""
        postersString = posterNames.joined(separator: ", ")
        // convenience set focus back to text field for next entry
        textFieldIsFocused = true
    }
}

#Preview {
    ContentView()
}
