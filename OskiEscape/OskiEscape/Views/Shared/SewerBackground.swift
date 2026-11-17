//
//  SewerBackground.swift
//  OskiEscape
//
//  Created by Krithin K on 11/16/26.
//

import SwiftUI

struct SewerBackground: View {
    let brickWidth: CGFloat = 56
    let brickHeight: CGFloat = 22
    let gap: CGFloat = 6

    var body: some View {
        Color.oskiNavy
            .overlay {
                VStack(spacing: gap) {
                    ForEach(0..<45, id: \.self) { row in
                        HStack(spacing: gap) {
                            ForEach(0..<9, id: \.self) { _ in
                                RoundedRectangle(cornerRadius: 2)
                                    .fill(Color.white.opacity(0.03))
                                    .frame(width: brickWidth, height: brickHeight)
                            }
                        }
                        // Every other row is shifted by half a brick, like a real wall.
                        .offset(x: row % 2 == 0 ? 0 : (brickWidth + gap) / 2)
                    }
                }
            }
            .clipped()
            .ignoresSafeArea()
    }
}

#Preview {
    SewerBackground()
}
