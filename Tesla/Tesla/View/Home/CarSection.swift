//
//  CarSection.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct CarSection: View {
    let chargingLevel: Int
    
    @Binding var openCharging: Bool
    
    var body: some View {
        VStack(spacing: 5) {
            HStack(alignment: .center) {
                Button(action: {
                    withAnimation {
                        openCharging = true
                    }
                }) {
                    Label("\(chargingLevel) Km".uppercased(), systemImage: "battery.75")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .foregroundColor(Color("Green"))
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Parked")
                        .fontWeight(.semibold)
                    
                    Text("Last updated: 5 min ago")
                        .font(.caption2)
                        .foregroundColor(Color.gray)
                }
            }
            
            Image("model3")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct CarSection_Previews: PreviewProvider {
    static var previews: some View {
        CarSection(chargingLevel: 420, openCharging: .constant(true))
    }
}
