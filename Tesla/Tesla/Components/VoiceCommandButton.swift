//
//  VoiceCommandButton.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct VoiceCommandButton: View {
    @Binding var isOpen: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: {
                    withAnimation {
                        isOpen = true
                    }
                }) {
                    Image(systemName: "mic.fill")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .frame(width: 64, height: 64)
                        .background(Color("Green"))
                        .foregroundColor(Color("DarkGray"))
                        .clipShape(Circle())
                        .padding()
                        .shadow(radius: 10)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct VoiceCommandButton_Previews: PreviewProvider {
    static var previews: some View {
        VoiceCommandButton(isOpen: .constant(false))
    }
}
