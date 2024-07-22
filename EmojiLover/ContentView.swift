 //
//  ContentView.swift
//  EmojiLover
//
//  Created by Sachh Moka on 10/7/2024.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😀, 📽️, 🖥️, 💻
}

struct ContentView: View {
    @State var selection: Emoji = .🖥️
    var body: some View {
        NavigationStack{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 160))
                
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self){
                        emoji in Text(emoji.rawValue)
                    }  
                }.pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lovers!")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
