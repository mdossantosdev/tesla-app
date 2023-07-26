//
//  ActionNotification.swift
//  Tesla
//
//  Created by Marc on 14/07/2023.
//

import SwiftUI

struct ActionNotification: View {
    let icon: String
    let text: String
    
    @Binding var isOpen: Bool
    
    var body: some View {
        VStack {
            Spacer()
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: icon)
                Text(text)
                    .fontWeight(.medium)
                Spacer()
                Button(action: {
                    withAnimation {
                        isOpen = false
                    }
                }) {
                    Text("Cancel")
                        .font(.subheadline)
                        .opacity(0.5)
                }
            }
            .padding(20)
            .foregroundColor(Color.white)
            .background(Color("DarkGray"))
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .padding()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ActionNotification_Previews: PreviewProvider {
    static var previews: some View {
        ActionNotification(icon: "fanblades.fill", text: "Turning on the fan", isOpen: .constant(true))
    }
}
