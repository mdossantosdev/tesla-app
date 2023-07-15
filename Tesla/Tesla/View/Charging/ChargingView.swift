//
//  ChargingView.swift
//  Tesla
//
//  Created by Marc on 15/07/2023.
//

import SwiftUI

struct ChargingView: View {
    @State private var value: Double = 420
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                
                VStack(alignment: .leading, spacing: 10) {
                    Label("420 km", systemImage: "bolt.fill")
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                        .foregroundColor(Color("Green"))
                    
                    Text("2h 30m remain • 32/3A • 50 km/hour")
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Charge Limit: \(Int(value)) km")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .opacity(0.5)
                    
                    Slider(value: $value, in: 0...600, step: 1)
                        .tint(Color("Green"))
                }
                
                CustomDivider()
                
                Button(action: {}) {
                    Text("Stop Charging")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 20)
                        .background(Color("Red"))
                        .clipShape(Capsule())
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.bottom, 20)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("DarkGray"))
            .foregroundColor(Color.white)
            .cornerRadius(16, corners: [.topLeft, .topRight])
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ChargingView_Previews: PreviewProvider {
    static var previews: some View {
        ChargingView()
    }
}
