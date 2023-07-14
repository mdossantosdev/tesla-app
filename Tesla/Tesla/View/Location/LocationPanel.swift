//
//  LocationPanel.swift
//  Tesla
//
//  Created by Marc on 11/07/2023.
//

import SwiftUI

struct LocationPanel: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Location")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    CustomDivider()
                    
                    Label("22 Avenue Montaigne, Paris, 75008", systemImage: "location.fill")
                        .font(.footnote)
                        .opacity(0.5)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Summon")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Press and hold controls to move vehicle")
                        .font(.footnote)
                        .opacity(0.5)
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("DarkGray"))
            .foregroundColor(Color.white)
        }
    }
}

struct LocationPanel_Previews: PreviewProvider {
    static var previews: some View {
        LocationPanel()
    }
}
