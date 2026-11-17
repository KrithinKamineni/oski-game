//
//  PipeIconButton.swift
//  OskiEscape
//
//  Created by Krithin K on 11/16/26.
//

import SwiftUI

struct PipeIconButton: View {
    let systemName: String
    var size: CGFloat = 44
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .font(.system(size: size * 0.4, weight: .bold))
                .foregroundStyle(Color.white)
                .frame(width: size, height: size)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.pipe)
                )
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.pipeDark)
                        .offset(y: 3)
                )
        }
    }
}

#Preview {
    HStack {
        PipeIconButton(systemName: "arrow.counterclockwise") { print("restart") }
        PipeIconButton(systemName: "house.fill") { print("home") }
    }
    .padding()
    .background(Color.oskiNavy)
}


