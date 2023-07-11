//
//  CarPin.swift
//  Tesla
//
//  Created by Marc on 11/07/2023.
//

import SwiftUI

struct CarPin: View {
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
            Image(systemName: "car.fill")
                .frame(width: 36, height: 36)
                .background(Color("Red"))
                .foregroundColor(Color.white)
                .clipShape(Circle())
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color("Red"))
                .frame(width: 12, height: 12)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -8)
                .padding(.bottom, 10)
        }
    }
}

struct CarPin_Previews: PreviewProvider {
    static var previews: some View {
        CarPin()
    }
}
