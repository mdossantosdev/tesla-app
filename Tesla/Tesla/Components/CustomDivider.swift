//
//  CustomDivider.swift
//  Tesla
//
//  Created by Marc on 25/06/2023.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 0.7)
            .background(Color.white)
            .opacity(0.1)
    }
}

struct CustomDivider_Previews: PreviewProvider {
    static var previews: some View {
        CustomDivider()
    }
}
