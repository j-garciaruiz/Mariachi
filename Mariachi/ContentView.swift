//
//  ContentView.swift
//  Mariachi
//
//  Created by Johnattan García Ruiz on 3/31/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed = false

    var body: some View {
        VStack(spacing: 30) {
            Text("Mariachi")
                .font(.largeTitle)
                .fontWeight(.bold)

            Button(action: {
                SoundManager.shared.play("jarabe_tapatio")
            }) {
                Text("🎺 ¡MARIACHI!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }
        }
    }
}

#Preview {
    ContentView()
}
