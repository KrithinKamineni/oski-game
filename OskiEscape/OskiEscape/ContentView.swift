//
//  ContentView.swift
//  OskiEscape
//
//  Created by Krithin K on 11/16/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Oski Escape")
            .font(.system(size: 40, weight: .heavy, design: .rounded))
            .foregroundStyle(Color.oskiGold)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.oskiNavy)
    }
}

#Preview {
    ContentView()
}
