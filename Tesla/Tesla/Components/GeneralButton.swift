//
//  GeneralButton.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct GeneralButton: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .imageScale(.large)
            .frame(width: 44, height: 44)
            .background(Color.white.opacity(0.05))
            .foregroundColor(Color.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white.opacity(0.1), lineWidth: 0.5)
            )
    }
}

struct GeneralButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("DarkGray").ignoresSafeArea()
            
            GeneralButton(icon: "lock.fill")
        }
    }
}
