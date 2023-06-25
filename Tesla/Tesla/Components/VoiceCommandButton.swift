//
//  VoiceCommandButton.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct VoiceCommandButton: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Image(systemName: "mic.fill")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                    .frame(width: 64, height: 64)
                    .background(Color.green)
                    .clipShape(Circle())
                    .padding()
                    .shadow(radius: 10)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct VoiceCommandButton_Previews: PreviewProvider {
    static var previews: some View {
        VoiceCommandButton()
    }
}