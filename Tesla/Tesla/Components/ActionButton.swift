//
//  ActionButton.swift
//  Tesla
//
//  Created by Marc on 26/06/2023.
//

import SwiftUI

struct ActionButton: View {
    var icon: String
    var label: String
    
    var body: some View {
        VStack(alignment: .center) {
            GeneralButton(icon: icon)
            Text(label)
                .font(.system(size: 12, weight: .semibold, design: .default))
                .multilineTextAlignment(.center)
        }
        .frame(width: 72, height: 84)
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("DarkGray").ignoresSafeArea()
            
            ActionButton(icon: "bolt.fill", label: "Charging")
        }
    }
}
