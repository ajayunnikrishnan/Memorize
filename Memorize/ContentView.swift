//
//  ContentView.swift
//  Memorize
//
//  Created by Ajay Unnikrishnan on 2025-02-22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }

        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
            
            Text("👻").font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}
