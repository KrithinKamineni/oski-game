//
//  ContentView.swift
//  OskiEscape
//
//  Created by Krithin K on 11/16/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            SewerBackground()

            VStack(spacing: 20) {
                Text("Oski Escape")
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundStyle(Color.oskiGold)

                // Step 3: the big buttons
                Text("Start Game").primaryGameButton()
                Text("Return to Home").secondaryGameButton()

                // Step 4: the small icon buttons
                HStack {
                    PipeIconButton(systemName: "arrow.counterclockwise") {
                        print("Restart tapped")
                    }
                    PipeIconButton(systemName: "house.fill") {
                        print("Home tapped")
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
