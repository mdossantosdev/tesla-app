//
//  CarSection.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct CarSection: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                HStack {
                    Image(systemName: "battery.75")
                    Text("423 Km".uppercased())
                }
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .foregroundColor(Color("Green"))
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Parked")
                        .fontWeight(.semibold)
                    
                    Text("Last updated: 5 min ago")
                        .font(.caption2)
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

struct CarSection_Previews: PreviewProvider {
    static var previews: some View {
        CarSection()
    }
}
