//
//  SettingCard.swift
//  Tesla
//
//  Created by Marc on 28/06/2023.
//

import SwiftUI

struct SettingCard: View {
    let icon: String
    let label: String
    var message: String
    var backgroundColor: Color = Color.white.opacity(0.05)
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image(systemName: icon)
                .frame(width: 26, height: 26)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(label)
                    .font(.system(size: 14, weight: .semibold, design: .default))
                
                Text(message.uppercased())
                    .font(.system(size: 8, weight: .medium, design: .default))
                    .lineLimit(1)
            }
            .padding(.leading, 4)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .padding()
        .foregroundColor(Color.white)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white.opacity(0.1), lineWidth: 0.5))
    }
}

struct SettingCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("DarkGray").ignoresSafeArea()
            
            SettingCard(icon: "car.fill", label: "Controls", message: "Car Locked")
        }
    }
}
