//
//  CarLockButton.swift
//  Tesla
//
//  Created by Marc on 01/07/2023.
//

import SwiftUI

struct CarLockButton: View {
    @State var isLocked: Bool = true
    
    var body: some View {
        Button(action: {
            withAnimation {
                isLocked = !isLocked
            }
        }) {
            Label(isLocked ? "Unlock Car" : "Lock Car", systemImage: isLocked ? "lock.fill" : "lock.open.fill")
                .font(.system(size: 16, weight: .bold, design: .default))
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
