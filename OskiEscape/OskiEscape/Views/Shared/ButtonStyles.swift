//
//  ButtonStyles.swift
//  OskiEscape
//
//  Created by Krithin K on 11/16/26.
//

import SwiftUI

// Big solid gold button with a darker "pressed" edge underneath.
struct PrimaryGameButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 22, weight: .bold, design: .rounded))
            .foregroundStyle(Color.oskiNavy)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.oskiGold)
            )
            .background(
                // A second, darker rectangle peeking out below = the "3D" edge.
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.oskiGoldDark)
                    .offset(y: 5)
            )
    }
}

// Outlined button for less important actions.
struct SecondaryGameButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18, weight: .semibold, design: .rounded))
            .foregroundStyle(Color.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.white.opacity(0.85), lineWidth: 2)
            )
    }
}

extension View {
    func primaryGameButton() -> some View {
        modifier(PrimaryGameButtonModifier())
    }

    func secondaryGameButton() -> some View {
        modifier(SecondaryGameButtonModifier())
    }
}
