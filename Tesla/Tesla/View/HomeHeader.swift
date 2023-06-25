//
//  HomeHeader.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct HomeHeader: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Model 3".uppercased())
                    .font(.caption2)
                    .fontWeight(.medium)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .foregroundColor(Color.white)
                    .background(Color("Red"))
                    .clipShape(Capsule())
                
                Text("Mach Five")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            
            Spacer()
            
            HStack {}
        }
    }
}

struct HomeHeader_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeader()
    }
}
