//
//  FullButton.swift
//  Tesla
//
//  Created by Marc on 14/07/2023.
//

import SwiftUI

struct FullButton: View {
    let text: String
    var icon: String = ""
    
    var body: some View {
        if icon.isEmpty {
            textButton
        } else {
            iconButton
        }
    }
    
    var iconButton: some View {
        Label(text, systemImage: icon)
            .font(.system(size: 14, weight: .semibold, design: .default))
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
    
    var textButton: some View {
        Text(text)
            .font(.system(size: 14, weight: .semibold, design: .default))
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

struct FullButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("DarkGray").ignoresSafeArea()
            
            FullButton(text: "Full Button")
        }
    }
}
