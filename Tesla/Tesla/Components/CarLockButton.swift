//
//  CarLockButton.swift
//  Tesla
//
//  Created by Marc on 01/07/2023.
//

import SwiftUI

struct CarLockButton: View {
    var body: some View {
        Button(action: {}) {
            Label("Unlock Car", systemImage: "lock.fill")
                .font(.system(size: 14, weight: .medium, design: .default))
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.white.opacity(0.05))
                .foregroundColor(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 14, style: .continuous)
                        .stroke(Color.white.opacity(0.1), lineWidth: 0.5)
            )
        }
    }
}

struct CarLockButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("DarkGray").ignoresSafeArea()
            CarLockButton()
        }
    }
}
