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
    let message: String = ""
    var backgroundColor: Color = Color.white.opacity(0.05)
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            
            VStack {
                Text(label)
                
                if !message.isEmpty {
                    Text(message)
                }
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .padding()
        .foregroundColor(Color.white)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct SettingCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("DarkGray").ignoresSafeArea()
            
            SettingCard(icon: "car.fill", label: "Controls")
        }
    }
}
