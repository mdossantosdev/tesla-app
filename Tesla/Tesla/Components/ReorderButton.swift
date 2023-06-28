//
//  ReorderButton.swift
//  Tesla
//
//  Created by Marc on 28/06/2023.
//

import SwiftUI

struct ReorderButton: View {
    var body: some View {
        Button(action: {}) {
            Text("Reorder Groups")
                .font(.caption)
                .padding(.vertical, 8)
                .padding(.horizontal, 14)
                .background(Color.white.opacity(0.05))
                .clipShape(Capsule())
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white.opacity(0.1), lineWidth: 0.5))
        }
    }
}

struct ReorderButton_Previews: PreviewProvider {
    static var previews: some View {
        ReorderButton()
    }
}
